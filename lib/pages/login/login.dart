import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mining_monitoring/pages/login/login_result.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../../data/store/user_store.dart';
import '../../di/component/service_locator.dart';
import '../../di/providers/login_provider.dart';
import 'login_form.dart';

GetUserStoreHelper getStoreHelper = getIt<GetUserStoreHelper>();

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});




  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    final loginState = ref.watch(loginStateProvider);

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
                child: loginState.maybeWhen(
                  success: (nik) {
                    getStoreHelper.saveNik(nik);

                    return LoginResult(
                      avatarImageUrl: "https://i.pravatar.cc/400?u=1",
                      name: "Fulan Fulanah",
                      position: "Operator",
                    );
                  },
                  orElse: () => const LoginForm(),
                ),
                // child: LoginForm(),
              )
          )
      ),
    );
  }
}