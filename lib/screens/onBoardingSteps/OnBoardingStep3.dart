import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thebase_app/ui/styles/Colors.dart';

class OnBoardingStep2 extends StatefulWidget {
  OnBoardingStep2({Key key, this.onChanged}) : super(key: key);

  bool value = false;
  final ValueChanged<bool> onChanged;

  @override
  _OnBoardingStep2State createState() => _OnBoardingStep2State();
}

class _OnBoardingStep2State extends State<OnBoardingStep2> {
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
            'assets/img/topImage2.png',
            fit: BoxFit.cover,
            width: size.width,
            height: size.height / 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your privacy is important to us.',
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
              'This information stays between us - simply switching from private to public in your user profile.',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            height: size.height * 0.10,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xFFFFEFED)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.decelerate,
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: widget.value ? TheBaseColors.lightRed : Color(0xFFDCDCDC),
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
                ),
                Text(
                  'You decide what you want \nto share with the public',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
