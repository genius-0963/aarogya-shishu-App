import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/notification_provider.dart';
import 'notification_settings_screen.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifications = context.watch<NotificationProvider>().notifications;

    return Scaffold(
      appBar: AppBar(
        title: Text('Parent Notifications'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => NotificationSettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: notifications.isEmpty
          ? Center(child: Text('No notifications yet.'))
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (ctx, index) {
                final note = notifications[index];
                return ListTile(
                  title: Text(note.title),
                  subtitle: Text(note.body),
                  trailing: Text('${note.dateTime.hour}:${note.dateTime.minute}'),
                );
              },
            ),
    );
  }
}
