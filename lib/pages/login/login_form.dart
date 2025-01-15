import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mining_monitoring/data/model/responses/user_response_entity.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../../di/providers/login_provider.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({
    super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _nikController = TextEditingController();

    final loginState = ref.watch(loginStateProvider);


    String _getShiftId() {
      final now = DateTime.now();
      final hour = now.hour;

      // 05:00-17:00 -> DS (Day Shift)
      // 17:00-05:00 -> NS (Night Shift)
      if (hour >= 5 && hour < 17) {
        return '048C-DS';
      } else {
        return '048C-NS';
      }
    }

    return Container(
      padding: EdgeInsets.fromLTRB(48, 24, 48, 24),
      child: Center(
          child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Login by Code",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24
                  ),
                ),
                SizedBox(height: 12,),
                Text(
                  "Enter your NIK",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: TWColors.gray.shade500
                  ),
                ),
                TextField(
                  controller: _nikController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter NIK',
                  ),
                ),
                loginState.maybeWhen(
                  error: (err) => Text(
                    err,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: TWColors.red.shade500
                    ),
                  ),
                  orElse: () => SizedBox(),
                ),
                GFButton(
                  size: 50,
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),
                  ),
                  fullWidthButton: true,
                  onPressed: () {
                    if (_nikController.text.isNotEmpty) {
                      ref.read(loginStateProvider.notifier).login(_nikController.text,shiftId: _getShiftId(),unitId: getStoreHelper.getUnitId() );
                    }

                  },
                )
              ])
      ),
    );
  }

}