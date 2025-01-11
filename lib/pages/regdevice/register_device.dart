import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mining_monitoring/di/providers/device_regis_provider.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../../constants/strings.dart';

class RegisterDeviceScreen extends ConsumerWidget {
  const RegisterDeviceScreen({super.key});

  Widget loadingProgress(int progress) {

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    final deviceRegisState = ref.watch(deviceRegisStateProvider);

    final deviceId = "TEST${Random().nextInt(10000)}";


    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
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
                          Future.delayed(Duration(seconds: 3)).then((_) {
                            ref.watch(deviceRegisStateProvider.notifier).checkId(deviceId);
                          });
                          return loadingProgress(0);
                        },
                        checkDeviceLoading: () {
                          return loadingProgress(20);
                        },
                        deviceNotFound: () {

                          Future.delayed(Duration(seconds: 1)).then((_) {
                            ref.watch(deviceRegisStateProvider.notifier).regisDeviceId(deviceId);
                          });
                          return loadingProgress(40);
                        },
                        waitActivation: () {

                          return loadingProgress(60);
                        },
                        orElse: () {
                          return SizedBox();
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
      ),
    );
  }

}