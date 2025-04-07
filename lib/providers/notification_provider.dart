import 'package:flutter/material.dart';
import '../models/notification_model.dart';

class NotificationProvider with ChangeNotifier {
  List<AppNotification> _notifications = [];

  List<AppNotification> get notifications => _notifications;

  void addNotification(AppNotification notification) {
    _notifications.add(notification);
    notifyListeners();
  }

  void clearNotifications() {
    _notifications.clear();
    notifyListeners();
  }
}
