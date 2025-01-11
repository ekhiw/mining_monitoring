import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/components/button/gf_button.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("LOGIN"),
          GFButton(
            text: "Submit",
            onPressed: () {
              print("EKHIW SUBMIT");
            },
            borderShape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
          )

        ],
      ),
    );
  }
}