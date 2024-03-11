import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [selectedItem('English'), unSelectedItem('Arabic')],
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
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}
