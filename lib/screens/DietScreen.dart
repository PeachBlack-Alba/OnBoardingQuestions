import 'package:flutter/material.dart';
import 'package:onboardingQuestions/screens/components/ViewAllPopUp.dart';
import 'components/DietTags.dart';


class DietScreen extends StatefulWidget {
  @override
  DietScreenState createState() => DietScreenState();
}

class DietScreenState extends State<DietScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color background = Color(0xFF001d5d);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/img/topImage7.png',
          fit: BoxFit.cover,
          width: size.width,
          //height: size.height * 0.40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'WHAT IS YOUR DIET\nPREFERENCE? ',
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewAllPopUp()));

                  },
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          ),
        ),
        DietTags(),
      ],
    );
  }
}
