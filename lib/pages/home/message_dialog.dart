import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:another_xlider/models/tooltip/tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_monitoring/di/providers/chat_provider.dart';
import 'package:mining_monitoring/pages/home/message_item.dart';
import 'package:tailwind_colors/tailwind_colors.dart';


class MessageDialog extends HookConsumerWidget {
  const MessageDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    final leftValue = useState(45.0);
    final rightValue = useState(55.0);


    void handleRightButton() {
      ref.read(chatNotifierProvider.notifier)
          .setIsDialogOpen(false);
      Navigator.of(context).pop();

    }

    void handleLeftButton() {
      ref.read(chatNotifierProvider.notifier)
          .setIsDialogOpen(false);
      Navigator.of(context).pop();

    }


    return Dialog(
      child: Container(
        height: screenHeight * 0.8,
        decoration: BoxDecoration(
          color: TW3Colors.gray.shade800,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                const SizedBox(width: 8),
                Text(
                  'Messages',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14
                  ),
                ),
              ],
            ),
            // Message Section
            const SizedBox(height: 16),
            Expanded(child:
              ListView.builder(
                itemCount: ref.read(chatNotifierProvider).messages.length,
                itemBuilder: (context, index) {
                  final message = ref
                      .read(chatNotifierProvider)
                      .messages[index];
                  final isMe = message.senderNik == "me";
                  return MessageItem(
                      isMe: isMe,
                      senderName: "${message.senderName}",
                      message: "${message.message}",
                      sendAt: "${message.createdAt}",
                    isFullWidth: true,
                  );
                },
              )
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(32),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      handleLeftButton();
                    },
                    child: Text(
                      'Balas Nanti',
                      style: TextStyle(
                          color: TW3Colors.slate,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Expanded(child:
                  FlutterSlider(
                    values: [leftValue.value, rightValue.value],
                    rangeSlider: true,
                    max: 100,
                    min: 0,
                    tooltip: FlutterSliderTooltip(
                      disabled: true,
                    ),
                    rightHandler: FlutterSliderHandler(
                        child: Icon(Icons.chevron_right)
                    ),
                    handler: FlutterSliderHandler(
                        child: Icon(Icons.chevron_left)
                    ),
                    onDragCompleted: (handlerIndex, lowerValue, upperValue) {
                      if (handlerIndex == 0) {
                        leftValue.value = lowerValue;
                        rightValue.value = lowerValue + 10;

                      }
                      if (handlerIndex == 1) {
                        leftValue.value = upperValue - 10;
                        rightValue.value = upperValue;
                      }
                      if (lowerValue<25){
                        handleLeftButton();
                      }
                      if (upperValue>75){
                        handleRightButton();
                      }
                    },
                  )
                  ),
                  TextButton(
                    onPressed: () {
                      handleRightButton();
                    },
                    child: Text(
                      'Mengerti',
                      style: TextStyle(
                          color: TW3Colors.slate,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
