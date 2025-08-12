abstract interface class SettingsRepositoryInterface {
  bool isDarkThemeSelected();

  bool isNotification();

  Future<void> setDarkThemeSelected(bool selected);

  Future<void> setNotification(bool notification);

  Future<void> setAlarmNotification(bool notification);
}