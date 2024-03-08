import 'package:flutter/material.dart';

class TasbeehTab extends StatefulWidget {
  @override
  State<TasbeehTab> createState() => _TasbeehTabState();
}

class _TasbeehTabState extends State<TasbeehTab> {
  int count = 0;
  List<String> titles = [
    'سبحان الله',
    'الحمدلله',
    'لا إله إلا الله',
    'الله أكبر'
  ];
  String text = '';
  int currentTitleIndex = 0;
  int pressesCount = 0;

  void initState() {
    super.initState();
    // Set the initial text to titles[0]
    text = titles[0];
  }

  void onClick() {
    pressesCount++;
    if (pressesCount == 34) {
      // Move to the next title after 33 presses
      currentTitleIndex = (currentTitleIndex + 1) % titles.length;
      text = titles[currentTitleIndex];
      pressesCount = 0;
    }

    count = pressesCount;
    setState(() {});
  }

  double rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head of seb7a.png'),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.088,
                bottom: 26,
              ),
              child: GestureDetector(
                onTap: () {
                  onClick();
                  // Incrementally rotate the photo by 0.1 radians on each tap
                  setState(() {
                    rotationAngle += 0.1;
                  });
                },
                child: Transform.rotate(
                  angle: rotationAngle,
                  child: Image.asset('assets/images/body of seb7a.png',
                      height: 270),
                ),
              ),
            )
          ],
        ),
        Text(
          'عدد التسبيحات',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 27),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 160, right: 160, top: 20),
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0x87B7935F),
          ),
          child: Text(
            '$count',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 120, right: 120, top: 10),
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFFB7935F),
          ),
          child: Text(
            '$text',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        )
      ],
    );
  }
}
