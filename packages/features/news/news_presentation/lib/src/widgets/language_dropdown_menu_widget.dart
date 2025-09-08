import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_presentation/src/bloc/app_settings/app_settings_bloc.dart';

class LanguageDropdown extends StatefulWidget {
  const LanguageDropdown({super.key});

  @override
  State<LanguageDropdown> createState() => _LanguageDropdownState();
}

class _LanguageDropdownState extends State<LanguageDropdown> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSettingsBloc, AppSettingsState>(
        builder: (context, state) {
      final selectedLanguage = SupportedLanguages.values.firstWhere(
        (language) => language.languageCode == state.locale.languageCode,
        orElse: () => SupportedLanguages.english,
      );
      return DropdownButtonHideUnderline(
        child: DropdownButton<SupportedLanguages>(
          icon: const Icon(Icons.language, color: Colors.white),
          dropdownColor: Theme.of(context).appBarTheme.backgroundColor,
          value: selectedLanguage,
          items: SupportedLanguages.values
              .map(
                (language) => DropdownMenuItem(
                  value: language,
                  child: Text(
                    language.name,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
              .toList(),
          onChanged: (language) {
            if (language == null) return;
            context.read<AppSettingsBloc>().add(
                AppSettingsEvent.changeLanguage(Locale(language.languageCode)));
          },
        ),
      );
    });
  }
}
