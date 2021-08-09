import 'package:flutter/material.dart';
import 'FilterChipWidget.dart';

class DietTags extends StatefulWidget {
  final String chipName;

  DietTags({Key key, this.chipName}) : super(key: key);

  @override
  DietTagsState createState() => DietTagsState();
}

class DietTagsState extends State<DietTags> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Vegetarian'),
            FilterChipWidget(chipName: 'Vegan'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Gluten Free'),
            FilterChipWidget(chipName: 'Dairy Free'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChipWidget(chipName: 'Omnivore'),
            FilterChipWidget(chipName: 'Pescatarian'),
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
