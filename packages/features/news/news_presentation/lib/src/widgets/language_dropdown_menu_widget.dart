import 'package:core_ui/core_ui.dart';
import 'package:di/di/di.dart';
import 'package:flutter/material.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<SupportedLanguages>(
        icon: const Icon(Icons.language, color: Colors.white),
        dropdownColor: Theme.of(context).appBarTheme.backgroundColor,
        items: SupportedLanguages.values
            .map((language) => DropdownMenuItem(
                value: language,
                child:
                    Text(language.name, style: TextStyle(color: Colors.white))))
            .toList(),
        onChanged: (language) {
          if (language == null) return;
          inject<AppSettingsRepository>().changeLanguage(language);
          // context.read<AppSettingsProvider>().changeLanguage(language);
        },
      ),
    );
  }
}
