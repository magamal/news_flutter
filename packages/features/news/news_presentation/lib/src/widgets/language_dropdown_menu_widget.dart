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
    final state = context.watch<AppSettingsBloc>().state;

    final selectedLanguage = SupportedLanguages.values.firstWhere(
          (language) => language.languageCode == state.locale.languageCode,
      orElse: () => SupportedLanguages.english,
    );

    return PopupMenuButton<SupportedLanguages>(
      icon: const Icon(Icons.language, color: Colors.white),
      color: Theme.of(context).appBarTheme.backgroundColor,
      initialValue: selectedLanguage,
      onSelected: (language) {
        context.read<AppSettingsBloc>().add(
            AppSettingsEvent.changeLanguage(Locale(language.languageCode)));
      },
      itemBuilder: (context) => SupportedLanguages.values
          .map(
            (language) => PopupMenuItem(
          value: language,
          child: Text(language.name),
        ),
      )
          .toList(),
    );
  }
}
