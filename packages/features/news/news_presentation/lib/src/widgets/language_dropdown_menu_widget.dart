import 'package:core_ui/core_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageDropdown extends StatelessWidget {

  const LanguageDropdown({super.key});

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
            context.read<AppSettingsProvider>().changeLanguage(locale);
          }
        },
      ),
    );
  }
}