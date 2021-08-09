import 'package:flutter/material.dart';
import 'package:thebase_app/ui/styles/Colors.dart';

class RoundedFilterChipWidget extends StatefulWidget {
  final String chipName;

  RoundedFilterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _RoundedFilterChipWidgetState createState() => _RoundedFilterChipWidgetState();
}

class _RoundedFilterChipWidgetState extends State<RoundedFilterChipWidget> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FilterChip(
      label: Container(width: size.width * 0.15, height: size.height * 0.04, child: Center(child: Text(widget.chipName))),
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
      selected: isSelected,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: TheBaseColors.darkBlue, width: 2),
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: Colors.white,
      onSelected: (selection) {
        setState(() {
          isSelected = selection;
        });
      },
      selectedColor: Colors.blueGrey,
    );
  }
}
