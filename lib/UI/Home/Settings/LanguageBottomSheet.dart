import 'package:flutter/material.dart';
import 'package:islami_app/Providers/SettingsProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('en');
                Navigator.of(context).pop();
              },
              child: settingsProvider.currentLocale == 'en'
                  ? selectedItem('English')
                  : unSelectedItem('English')),
          InkWell(
              onTap: () {
                settingsProvider.changeLanguage('ar');
                Navigator.of(context).pop();
              },
              child: settingsProvider.currentLocale == 'ar'
                  ? selectedItem('Arabic')
                  : unSelectedItem('Arabic'))
        ],
      ),
    );
  }

  Widget selectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary)),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        )
      ],
    );
  }

  Widget unSelectedItem(String text) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
