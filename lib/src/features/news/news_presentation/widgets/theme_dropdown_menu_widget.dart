import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../news.dart';

class ThemeModeDropdown extends StatelessWidget {
  const ThemeModeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSettingsBloc, AppSettingsState>(
      builder: (context, state) {
        final selectedTheme = SupportedThemes.values.firstWhere(
              (theme) => theme.mapToThemeMode() == state.themeMode,
          orElse: () => SupportedThemes.system,
        );

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<SupportedThemes>(
              icon: const Icon(Icons.brightness_6, color: Colors.white),
              dropdownColor: Theme.of(context).appBarTheme.backgroundColor,
              value: selectedTheme,
              items: SupportedThemes.values.map((theme) {
                return DropdownMenuItem(
                  value: theme,
                  child: Text(
                    theme.name,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
              onChanged: (theme) {
                if (theme != null) {
                  context
                      .read<AppSettingsBloc>()
                      .add(AppSettingsEvent.changeTheme(theme.mapToThemeMode()));
                }
              },
            ),
          ),
        );
      },
    );
  }
}

