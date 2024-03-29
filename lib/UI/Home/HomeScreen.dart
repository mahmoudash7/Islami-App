import 'package:flutter/material.dart';
import 'package:islami_app/UI/Home/hadeth/HadethTab.dart';
import 'package:islami_app/UI/Home/quran/QuranTab.dart';
import 'package:islami_app/UI/Home/radio/RadioTab.dart';
import 'package:islami_app/UI/Home/tasbeeh/TasbehTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          currentIndex: selectedTabIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Tasbeeh'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/7adeeth.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'Quran'),
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    TasbeehTab(),
    HadethTab(),
    QuranTab(),
  ];
}
