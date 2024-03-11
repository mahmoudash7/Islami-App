import 'package:flutter/material.dart';
import 'package:islami_app/UI/myThemeData.dart';

import '../Home/hadeth/hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth details screen';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.isDarkEnabled
                  ? 'assets/images/dark_background.png'
                  : 'assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                  child: SingleChildScrollView(
                      child: Text(
                        args.content,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
