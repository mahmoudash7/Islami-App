import 'package:flutter/material.dart';
import 'package:islami_app/UI/Hadeth%20Detials/HadethDetailsScreen.dart';

import 'hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(
            hadeth.title,
            style: TextStyle(
              fontSize: 25,
            ),
          )),
    );
  }
}
