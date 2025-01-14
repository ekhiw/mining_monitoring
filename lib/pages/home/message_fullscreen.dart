

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_monitoring/di/providers/login_provider.dart';
import 'package:mining_monitoring/pages/home/message_item.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../../di/providers/chat_provider.dart';

class MessageFullscreen extends HookConsumerWidget {
  const MessageFullscreen({
    required this.onBackBtnPressed,
    super.key});
  final VoidCallback onBackBtnPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final scrollController = useScrollController();
    final messageController = useTextEditingController();
    final searchController = useTextEditingController();
    final chatNotifier = ref.watch(chatNotifierProvider.notifier);
    final chatState = ref.watch(chatNotifierProvider);

    final filteredTemplates = useState(chatState.templateMessages);

    useEffect(() {
      void onScroll() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent * 0.8) {
          chatNotifier.getAllChat();
        }
      }

      Future.delayed(Duration(seconds: 1), () {
        print("EKHIW DELAYED GET ALL CHAT");
        chatNotifier.getAllChat(refresh: true);
        chatNotifier.getTemplateMessage();
      });

      scrollController.addListener(onScroll);

      return () => scrollController.removeListener(onScroll);
    }, []);

    useEffect(() {
      void onSearchChanged() {
        final searchText = searchController.text.toLowerCase();
        filteredTemplates.value = chatState.templateMessages.where((template) =>
            template.name.toLowerCase().contains(searchText)
        ).toList();
      }
      filteredTemplates.value = ref.read(chatNotifierProvider).templateMessages;

      searchController.addListener(onSearchChanged);
      return () => searchController.removeListener(onSearchChanged);
    }, [chatState.templateMessages]);


    return Container(
      decoration: BoxDecoration(
        color: TW3Colors.gray.shade800,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(80, 50),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: onBackBtnPressed,
                child: const Text('Back'),
              ),
            ],
          ),
          // Message Section
          const SizedBox(height: 16),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () => chatNotifier.getAllChat(refresh: true),
            child: SingleChildScrollView(
              controller: scrollController,
              reverse: true,
              child: Column(
                children: [
                  if (chatState.error != null)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        chatState.error!,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),

                  ...chatState.messages.map((message) => MessageItem(
                    isMe: message.deviceType == "Mobile",
                    senderName: message.senderName,
                    message: message.message,
                    sendAt: message.createdAt,
                  )).toList(),

                  if (chatState.isLoading)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                ],
              ),
            ),
          ),
        ),
          const SizedBox(height: 8),
          SearchBar(
            controller: searchController,
            hintText: 'Search',
            hintStyle: WidgetStateProperty.all(
              const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            constraints: const BoxConstraints(
              maxHeight: 50,
              minWidth: 100,
              maxWidth: 150,
            ),
            trailing: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),

          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filteredTemplates.value.length,
              itemBuilder: (context, index) {
                final template = filteredTemplates.value[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      messageController.text = template.name;
                    },
                    child: Text(template.name),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: messageController,
                  decoration: InputDecoration(
                    hintText: 'Type a message...',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                icon: const Icon(Icons.send, color: Colors.white),
                onPressed: () {
                  if (messageController.text.isNotEmpty) {
                    chatNotifier.sendMessage(messageController.text);
                    messageController.clear();
                  }
                },
              ),
            ],
          ),
          // const _Reply(),
        ],
      ),
    );
  }
}