import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageDropdown extends StatelessWidget {
  final Locale currentLocale;

  const LanguageDropdown({super.key, required this.currentLocale});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<Locale>(
        icon: const Icon(Icons.language, color: Colors.white),
        dropdownColor: Theme.of(context).appBarTheme.backgroundColor,
        items: const [
          DropdownMenuItem(value: Locale('en'), child: Text("EN", style: TextStyle(color: Colors.white),)),
          DropdownMenuItem(value: Locale('ar'), child: Text("AR", style: TextStyle(color: Colors.white),)),
        ],
        onChanged: (locale) {
          if (locale != null) {
            context
                .read<SettingsBloc>()
                .add(SettingsEvent.languageChanged(locale));
          }
        },
      ),
    );
  }
}