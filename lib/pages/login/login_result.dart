import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/getwidget.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_monitoring/router/app_router.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

class LoginResult extends HookConsumerWidget {
  const LoginResult({
    required this.avatarImageUrl,
    required this.name,
    this.position,
    super.key});

  final String avatarImageUrl;
  final String name;
  final String? position;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    useEffect(() {
      Future.delayed(Duration(seconds: 2), () {
        context.go(SGRoute.home.route);
      });
      return null;
    },const []);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 16,
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
                  height: 50,
                  color: TWColors.blue.shade600,
                  child: Center(
                    child: Text(
                        "Welcome Back",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white
                      ),
                    ),
                  ),
                )
            )
          ],
        ),
        Expanded(child: 
            Row(
              spacing: 24,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GFAvatar(
                    backgroundImage:NetworkImage(avatarImageUrl),
                    shape: GFAvatarShape.circle,
                  size: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        name,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24
                      )
                    ),
                    position != null ? Text(position!,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: TWColors.gray,
                            fontSize: 16
                        )
                    ):SizedBox()
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: TWColors.gray,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Container(),
                    ),
                  ),
                ),
              ],
            )
        ),
      ],
    );
  }
}