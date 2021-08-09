import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thebase_app/ui/styles/Colors.dart';

class OnBoardingStep3 extends StatefulWidget {
  OnBoardingStep3({Key key, this.onChanged}) : super(key: key);

  bool value = false;
  final ValueChanged<bool> onChanged;

  @override
  _OnBoardingStep3State createState() => _OnBoardingStep3State();
}

class _OnBoardingStep3State extends State<OnBoardingStep3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color background = Color(0xFF001d5d);

    return Scaffold(
      backgroundColor: background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/img/topImage3.png',
            fit: BoxFit.cover,
            width: size.width,
            height: size.height / 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur',
              style: TextStyle(
                fontFamily: 'FoundersGrotesqueXCond',
                color: Colors.white,
                fontSize: 22,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
