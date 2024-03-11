import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Providers/SettingsProvider.dart';
import 'package:islami_app/UI/Chapter%20Details/VerseWidget.dart';
import 'package:provider/provider.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'chapter details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.getBackgroundImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: verses.isEmpty
            ? Center(
          child: CircularProgressIndicator(),
        )
            : Card(
          margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return VerseWidget(verses[index], index);
            },
            separatorBuilder: (context, index) => Container(
              width: double.infinity,
              height: 2,
              color: Theme.of(context).dividerColor,
              margin: EdgeInsets.symmetric(horizontal: 64),
            ),
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.split("\n");
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String title;
  int index;

  ChapterDetailsArgs(this.title, this.index);
}
