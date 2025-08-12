import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'settings_repositories_interface.dart';

class SettingsRepository implements SettingsRepositoryInterface {
  SettingsRepository({
    required this.preferences,
  });

  final SharedPreferences preferences;

  static const _isDarkThemeSelectedKey = 'dark_theme_selected';
  static const _isNotificationSelectedKey = 'notification_selected';
  static const _isAlarmNotificationKey = 'alarm_notification_selected';

  @override
  bool isDarkThemeSelected() {
    final selected = preferences.getBool(_isDarkThemeSelectedKey);
    return selected ?? false;
  }

  @override
  bool isNotification() {
    final selected = preferences.getBool(_isNotificationSelectedKey);
    return selected ?? false;
  }

  @override
  Future<void> setDarkThemeSelected(bool selected) async {
    await preferences.setBool(_isDarkThemeSelectedKey, selected);
  }

  @override
  Future<void> setNotification(bool notification) async {
    await preferences.setBool(_isNotificationSelectedKey, notification);
  }

  @override
  Future<void> setAlarmNotification(bool notification) async {
    await preferences.setBool(_isAlarmNotificationKey, notification);
  }
}