
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

class MessageItem extends HookConsumerWidget {
  const MessageItem({
    required this.isMe,
    required this.senderName,
    required this.message,
    required this.sendAt,
    this.isFullWidth=false,
    super.key});

  final bool isMe;
  final String senderName;
  final String message;
  final String sendAt;
  final bool isFullWidth;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        alignment: isMe ? Alignment.centerRight : Alignment
            .centerLeft,
        padding: EdgeInsets.all(8),
        child: Container(
          width: isFullWidth ? constraints.maxWidth : constraints.maxWidth/2,
          child: Column(
            crossAxisAlignment: isMe
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                color: isMe ? TW3Colors.blue.shade600 : TW3Colors.yellow.shade600,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: isMe ? Radius.circular(8) : Radius.circular(0),
                    topRight: isMe ? Radius.circular(0) : Radius.circular(8),
                    bottomRight: const Radius.circular(8),
                    bottomLeft: const Radius.circular(8),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.warning_amber_outlined,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            senderName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        message,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        sendAt,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}