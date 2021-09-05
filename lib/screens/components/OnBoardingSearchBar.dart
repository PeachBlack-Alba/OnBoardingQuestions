import 'package:flutter/material.dart';

class OnBoardingSearchBar extends StatefulWidget {
  OnBoardingSearchBarState createState() => OnBoardingSearchBarState();
}

class OnBoardingSearchBarState extends State<OnBoardingSearchBar> {
  TextEditingController _textController = TextEditingController();

  static List<String> mainDataList = [
    'American Football',
    'Athletics',
    'Archery',
    'Cooking',
    'Hiking',
    'Books',
    'Badminton',
    'Baseball',
    'Basketball',
    'Boxing',
    'Cinema',
    'Soccer',
    'Music',
    'Dancing'
  ];

  // Copy Main List into New List.
  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList.where((string) => string.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: IconButton(
              icon: Icon(
                Icons.close,
                size: 30,
                color: Colors.red,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
                hintText: 'Search',
                suffixIcon: IconButton(
                  onPressed: _controller.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
              onChanged: onItemChanged,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12.0),
              children: newDataList.map((data) {
                return ListTile(
                  title: Text(
                    data,
                    style: TextStyle(),
                  ),
                  onTap: () => print(data),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
