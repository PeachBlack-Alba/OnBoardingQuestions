import 'package:flutter/material.dart';

import 'FilterChipWidget.dart';

class LanguageTags extends StatefulWidget {
  final String chipName;

  LanguageTags({Key key, this.chipName}) : super(key: key);

  @override
  LanguageTagsState createState() => LanguageTagsState();
}

class LanguageTagsState extends State<LanguageTags> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Spanish'),
            FilterChipWidget(chipName: 'English'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Arabic'),
            FilterChipWidget(chipName: 'French'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Chinese'),
            FilterChipWidget(chipName: 'Italian'),
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
