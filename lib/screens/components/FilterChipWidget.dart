import 'package:flutter/material.dart';
import 'package:thebase_app/ui/styles/Colors.dart';


class FilterChipWidget extends StatefulWidget {
  final String chipName;

  FilterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _FilterChipWidgetState createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return FilterChip(
      label: Container(width: size.width * 0.30, height: size.height * 0.05, child: Center(child: Text(widget.chipName))),
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
      selected: isSelected,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: TheBaseColors.darkBlue, width: 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: Colors.white,
      onSelected: (selection) {
        setState(() {
          isSelected = selection;
        });
      },
      selectedColor: TheBaseColors.lightRed,
    );
  }
}
