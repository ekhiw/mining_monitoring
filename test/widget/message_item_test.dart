import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mining_monitoring/pages/home/message_item.dart';

void main() {
  group('MessageItem', () {
    testWidgets('displays message correctly', (WidgetTester tester) async {

      const message = 'Test Message';
      const senderName = 'TEST';
      const sendAt = '2025-01-01';

      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MessageItem(
              isMe: false,
              message: message,
              senderName: senderName,
              sendAt: sendAt,
            ),
          ),
        ),
      );

      // Assert
      expect(find.text(message), findsOneWidget);
      expect(find.text(senderName), findsOneWidget);
      expect(find.text(sendAt), findsOneWidget);
    });

    testWidgets('aligns correctly based on isMe', (WidgetTester tester) async {
      // Test sender message (isMe: false)
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MessageItem(
              isMe: false,
              message: 'Test',
              senderName: 'Sender',
              sendAt: 'now',
            ),
          ),
        ),
      );

      final senderMessage = tester.widget<Align>(find.byType(Align));
      expect(senderMessage.alignment, Alignment.centerLeft);

      // Test my message (isMe: true)
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MessageItem(
              isMe: true,
              message: 'Test',
              senderName: 'Me',
              sendAt: 'now',
            ),
          ),
        ),
      );

      final myMessage = tester.widget<Align>(find.byType(Align));
      expect(myMessage.alignment, Alignment.centerRight);
    });
  });
}