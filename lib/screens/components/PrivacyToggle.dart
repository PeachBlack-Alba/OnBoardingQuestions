import 'package:flutter/material.dart';

class PrivacyToggle extends StatefulWidget {
  PrivacyToggle({Key key, this.onChanged}) : super(key: key);

  final ValueChanged<bool> onChanged;
  bool value = false;

  @override
  _PrivacyToggleState createState() => _PrivacyToggleState();
}

class _PrivacyToggleState extends State<PrivacyToggle> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.decelerate,
        width: 70,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: widget.value ? Colors.red : Color(0xFFDCDCDC),
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 300),
          alignment: widget.value ? Alignment.centerLeft : Alignment.centerRight,
          curve: Curves.decelerate,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
                Text(widget.value ? 'ON' : 'OFF'),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          widget.value = !widget.value;
        });
      },
    );
  }
}
