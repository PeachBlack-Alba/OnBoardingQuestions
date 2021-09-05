import 'package:flutter/material.dart';
import 'package:onboardingQuestions/screens/components/ViewAllPopUp.dart';

import 'components/MusicTags.dart';


class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color background = Color(0xFF001d5d);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/img/topImage6.png',
          fit: BoxFit.cover,
          width: size.width,
          //height: size.height * 0.40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'WHAT TYPE OF MUSIC GETS\nYOU GOING? ',
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Most common',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'FoundersGrotesqueXCond',
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewAllPopUp()),
                    );
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          ),
        ),
        MusicTags(),
      ],
    );
  }
}
