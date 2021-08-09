import 'package:flutter/material.dart';

import 'FilterChipWidget.dart';

class HobbiesTags extends StatefulWidget {
  final String chipName;

  HobbiesTags({Key key, this.chipName}) : super(key: key);

  @override
  _HobbiesTagsState createState() => _HobbiesTagsState();
}

class _HobbiesTagsState extends State<HobbiesTags> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Cooking'),
            FilterChipWidget(chipName: 'Reading'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Dancing'),
            FilterChipWidget(chipName: 'Music'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Gaming'),
            FilterChipWidget(chipName: 'Sports'),
          ],
        )
      ],
    );
  }
}

Widget TitleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}
