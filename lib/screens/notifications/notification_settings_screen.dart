import 'package:flutter/material.dart';

class NotificationSettingsScreen extends StatefulWidget {
  @override
  _NotificationSettingsScreenState createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  bool dailyReminders = true;
  bool healthTips = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Settings')),
      body: Column(
        children: [
          SwitchListTile(
            title: Text('Daily Reminders'),
            value: dailyReminders,
            onChanged: (value) {
              setState(() => dailyReminders = value);
            },
          ),
          SwitchListTile(
            title: Text('Health Tips Notifications'),
            value: healthTips,
            onChanged: (value) {
              setState(() => healthTips = value);
            },
          ),
        ],
      ),
    );
  }
}
