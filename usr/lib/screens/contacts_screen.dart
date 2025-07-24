import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: 10, // Mock contacts count
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(child: Text('C')),
            title: Text('Contact ${index + 1}'),
            subtitle: Text('Status: Online'),
            onTap: () {
              // Navigate to chat with this contact
            },
          );
        },
      ),
    );
  }
}
