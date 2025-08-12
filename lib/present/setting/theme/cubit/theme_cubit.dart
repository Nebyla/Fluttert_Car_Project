import 'dart:developer';
import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

import '../../repositories/settings_repositories_interface.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({
    required SettingsRepositoryInterface settingsRepository,
  }) : _settingsRepository = settingsRepository, super(const ThemeState(Brightness.light)) {
    _checkSelectedTheme();
  }

  final SettingsRepositoryInterface _settingsRepository;

  Future<void> setThemeBrightness(Brightness brightness) async {
    try{
      emit(ThemeState(brightness));
      await _settingsRepository.setDarkThemeSelected(brightness == Brightness.dark);
    } catch (e) {
      log(e.toString());
    }
  }

  void _checkSelectedTheme() {
    try {
      final brightness = _settingsRepository.isDarkThemeSelected() ? Brightness.dark : Brightness.light;
      emit(ThemeState(brightness));
    } on Exception catch (e) {
      log(e.toString());
    }
  }
}