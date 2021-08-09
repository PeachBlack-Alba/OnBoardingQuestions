import 'package:flutter/material.dart';
import 'package:thebase_app/ui/styles/Colors.dart';

class GenderScreen extends StatefulWidget {
  @override
  GenderScreenState createState() => GenderScreenState();
}

class GenderScreenState extends State<GenderScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color background = Color(0xFF001d5d);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/img/topImage9.png',
          fit: BoxFit.cover,
          width: size.width,
          //height: size.height * 0.40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'WHAT GENDER DO YOU\nIDENTIFY WITH? ',
            style: TextStyle(
              fontFamily: 'FoundersGrotesqueXCond',
              color: Colors.white,
              fontSize: 22,
              letterSpacing: 1,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              style: TextStyle(
                color: TheBaseColors.lightRed,
                fontWeight: FontWeight.bold,
                fontFamily: 'FoundersGrotesqueXCond',
              ),
              onTap: () {},
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'GENDER',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: TheBaseColors.lightRed),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: TheBaseColors.lightRed),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: TheBaseColors.lightRed),
                ),
              )
            ///////////////////Content
          ),
        ),
      ],
    );
  }
}
