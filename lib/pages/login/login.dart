import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mining_monitoring/pages/login/login_result.dart';

import '../../di/providers/login_provider.dart';
import 'login_form.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    final loginState = ref.watch(loginStateProvider);

    return Center(
        child: Card(
            clipBehavior: Clip.antiAlias,
            color: GFColors.WHITE,
            child: Container(
              constraints: BoxConstraints.expand(
                  width: screenWidth *0.37,
                  height: screenWidth *0.28
              ),
              child: loginState.maybeWhen(
                success: (data) {
                  // TODO pass model as parameter
                  return LoginResult(
                    avatarImageUrl: data.imageUrl,
                    name: data.name,
                    position: data.roleName,
                  );
                },
                orElse: () => const LoginForm(),
              ),
              // child: LoginForm(),
            )
        )
    );
  }
}