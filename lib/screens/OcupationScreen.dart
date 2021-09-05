import 'package:flutter/material.dart';

class OccupationScreen extends StatefulWidget {
  @override
  OccupationScreenState createState() => OccupationScreenState();
}

class OccupationScreenState extends State<OccupationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color background = Color(0xFF001d5d);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/img/topImage8.png',
            fit: BoxFit.cover,
            width: size.width,
            //height: size.height * 0.40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'WHAT DO YOU DO\nFOR A LIVING? ',
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
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontFamily: 'FoundersGrotesqueXCond',
              ),
              onTap: () {},
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'OCCUPATION',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
