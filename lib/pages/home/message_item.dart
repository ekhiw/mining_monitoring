
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
    super.key});

  final bool isMe;
  final String senderName;
  final String message;
  final String sendAt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Container(
      alignment: isMe ? Alignment.centerRight : Alignment
          .centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: isMe
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 0,
              color: TW3Colors.yellow.shade600,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
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
  }
}