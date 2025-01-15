import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_monitoring/di/providers/device_regis_provider.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../../constants/strings.dart';
import '../../di/providers/chat_provider.dart';
import '../../router/app_router.dart';

// use this for random deviceId
// final deviceId = "TEST${Random().nextInt(10000)}";

// use this for hardcoded deviceId
final deviceId = Strings.deviceId;

class RegisterDeviceScreen extends HookConsumerWidget {
  const RegisterDeviceScreen({super.key});

  Widget _LoadingProgress(int progress) {

    return Column(
      children: [
        GFProgressBar(
            percentage: progress > 0 ? progress/100: 0,
            lineHeight: 8,
            padding: EdgeInsets.only(left: 24,right: 24),
            backgroundColor : TW3Colors.slate.shade300,
            progressBarColor: TWColors.blue
        ),
        SizedBox(height: 8,),
        Text(
          "Please wait",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20
          ),
        ),
        Text(
          "We tried to install your device",
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16
          ),
        ),
      ],
    );
  }

  Widget _WaitingWidget(String serialNum) {


    return Column(
      spacing: 8,
      children: [
        Text(
          "Your serial number",
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 16,bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: TW3Colors.cyan.shade50,
            border: Border.all(
              color: TW3Colors.slate.shade300,
              width: 2
            )
          ),
          child: Center(
            child: Text(
              serialNum,
              style: TextStyle(
                  color: TW3Colors.slate.shade700,
                fontSize: 24
              ),
            ),
          ),
        ),
        Text(
          "Waiting for activaiton",
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: TWColors.blue,
              fontSize: 16
          ),
        ),
      ],
    );

  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    final deviceRegisState = ref.watch(deviceRegisStateProvider);
    final chatState = ref.watch(chatNotifierProvider);

    useEffect(() {

      Future.delayed(Duration(seconds: 2)).then((_) {
        ref.watch(deviceRegisStateProvider.notifier).checkId(deviceId);
      });

      return null;
    },const []);

    return Center(
        child: Card(
            clipBehavior: Clip.antiAlias,
            color: GFColors.WHITE,
            child: Container(
              constraints: BoxConstraints.expand(
                  width: screenWidth *0.37,
                  height: screenWidth *0.28
              ),
              padding: EdgeInsets.only(left: 24,right: 24,top: 18,bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 4,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 18,
                    children: [
                      SvgPicture.asset(
                        'assets/ic_backup.svg',
                        width: 48,
                        height: 48,
                        colorFilter: const ColorFilter.mode(TWColors.blue, BlendMode.srcIn),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Installation Wizard",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 28
                            ),
                          ),
                          Text(
                            "Device must be registered before can be used",
                            style: TextStyle(
                                color: TWColors.blue
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  deviceRegisState.maybeWhen(
                      initial: () {
                        return _LoadingProgress(0);
                      },
                      checkDeviceLoading: () {
                        return _LoadingProgress(50);
                      },
                      deviceNotFound: () {
                        Future.delayed(Duration(seconds: 1)).then((_) {
                          ref.watch(deviceRegisStateProvider.notifier).regisDeviceId(deviceId);
                        });
                        return _LoadingProgress(80);
                      },
                      webSocketSetupLoading: () {
                        try {
                          ref.watch(chatNotifierProvider.notifier).initConnection("ws/fms-dev/equipments/devices/$deviceId/activated",(data){

                            ref.watch(chatNotifierProvider.notifier).disconnect();
                            context.go(SGRoute.home.route);
                          });
                          Future.delayed(Duration(milliseconds: 100), () {
                            ref.watch(deviceRegisStateProvider.notifier).changeState();
                          });
                        } catch (e) {
                          print(e);
                        }
                        return _LoadingProgress(100);
                      },
                      waitActivation: () {
                        return _WaitingWidget(deviceId);
                      },
                      success: () {
                        Future.delayed(Duration(seconds: 1)).then((_) {
                          context.go(SGRoute.home.route);
                        });

                        return _LoadingProgress(100);
                      },
                      orElse: () {
                        return _LoadingProgress(0);
                      }),
                  Expanded(child: SizedBox()),
                  Text(
                    'Version ${Strings.appVersion}',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10
                    ),
                  )
                ],
              ),
              // child: LoginForm(),
            )
        )
    );
  }

}