import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/getwidget.dart';
import 'package:intl/intl.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

class AppBarWidget extends ConsumerWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(
      color: TWColors.gray.shade900,
      child: Padding(padding: EdgeInsets.only(left: 8),
        child: Row(
            spacing: 12,
            children: [
              Text(
                  "Test",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "SELATAN",
                style: TextStyle(color: Colors.white),
              ),
              Container(
                width: 2,
                height: 28,
                color: TWColors.blue,
              ),
              Expanded(child: SizedBox()),
              Icon(
                Icons.signal_cellular_alt,
                color: Colors.white,
              ),
              Icon(
                Icons.wifi,
                color: Colors.white,
              ),
              Text(
                "100%",
                style: TextStyle(color: Colors.white),
              ),
              Transform.rotate(
                angle: pi/2,
                child: Icon(
                  Icons.battery_6_bar,
                  color: Colors.white,
                ),
              ),
              StreamBuilder<DateTime>(
                stream:
                Stream.periodic(const Duration(seconds: 60), (_) => DateTime.now()),
                builder: (context, snapshot) {
                  String timeString =
                  DateFormat.Hm().format(snapshot.data ?? DateTime.now());
                  return Text(
                    timeString,
                    style: TextStyle(color: Colors.white),
                  );
                },
              ),
              SizedBox(width: 4,),
              Text("Fulan",
                style: TextStyle(color: Colors.white),
              ),
              GFAvatar(
                backgroundImage:NetworkImage("https://i.pravatar.cc/400?u=1"),
                shape: GFAvatarShape.circle,
                size: 24,
              )
            ]
        ),),
    );
  }
}