import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeModeDropdown extends StatelessWidget {
  final ThemeMode currentThemeMode;

  const ThemeModeDropdown({super.key, required this.currentThemeMode});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<ThemeMode>(
          icon: const Icon(Icons.brightness_6, color: Colors.white),
          dropdownColor: Theme.of(context).appBarTheme.backgroundColor,
          value: currentThemeMode,
          items: const [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("System", style: TextStyle(color: Colors.white)),
              ),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Light", style: TextStyle(color: Colors.white),),
              ),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Dark", style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
          onChanged: (themeMode) {
            if (themeMode != null) {
              context
                  .read<ThemeBloc>()
                  .add(ThemeEvent.themeChanged(themeMode));
            }
          },
        ),
      ),
    );
  }
}

