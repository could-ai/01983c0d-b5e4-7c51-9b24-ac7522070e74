import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/chat_screen.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement conversation search
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Mock conversation count
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(child: Text('U')),
            title: Text('User ${index + 1}'),
            subtitle: const Text('Last message here...'),
            trailing: const Text('10:00 AM'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(chatId: 'chat_${index + 1}', chatName: 'User ${index + 1}'),
                ),
              );            },
            onLongPress: () {
              // Implement swipe-to-delete with undo snackbar
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement custom floating action button for new chats
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}
