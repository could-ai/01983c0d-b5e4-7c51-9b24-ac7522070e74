import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Theme Selector'),
            subtitle: Text('Choose your app theme'),
            // Implement theme selector here
          ),
          ListTile(
            title: Text('Notifications'),
            subtitle: Text('Manage notification settings'),
            // Implement notification settings here
          ),
        ],
      ),
    );
  }
}
