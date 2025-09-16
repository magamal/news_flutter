import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/src/core/core.dart';
import 'package:news_app/src/features/news/news.dart';

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
          child: Text(language.name, style: const TextStyle(color: Colors.white),),
        ),
      )
          .toList(),
    );
  }
}