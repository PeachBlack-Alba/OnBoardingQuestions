import 'package:flutter/material.dart';

import 'FilterChipWidget.dart';


class MusicTags extends StatefulWidget {
  final String chipName;

  MusicTags({Key key, this.chipName}) : super(key: key);

  @override
  MusicTagsState createState() => MusicTagsState();
}

class MusicTagsState extends State<MusicTags> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'R&B'),
            FilterChipWidget(chipName: 'Pop'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Hip Hop'),
            FilterChipWidget(chipName: 'Indie'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Jazz'),
            FilterChipWidget(chipName: 'Funk'),
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
