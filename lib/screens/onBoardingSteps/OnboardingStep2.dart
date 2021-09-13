import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingStep2 extends StatefulWidget {
  @override
  _OnBoardingStep2State createState() => _OnBoardingStep2State();
}

class _OnBoardingStep2State extends State<OnBoardingStep2> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Image.asset(
            'assets/img/onboarding-step2-header.png',
            fit: BoxFit.cover,
            width: size.width,
            height: size.height / 2,
          ),
          Expanded(
              child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Your privacy is important to us.'.toUpperCase(),
                            style: TextStyle(
                              fontFamily: 'FoundersGrotesqueXCond',
                              color: Colors.white,
                              fontSize: 22,
                              letterSpacing: 1,
                            )),
                        SizedBox(height: context.themeSettings.screenPadding),
                        Text(
                            'This information stays between us - simply switching from private to public in your user profile.',
                            style: TextStyle(
                              fontFamily: 'FoundersGrotesqueXCond',
                              color: Colors.white,
                              fontSize: 18,
                              letterSpacing: 1,
                            )),
                        SizedBox(           height: 10,
                        ),
                        FullScreenWidthCell(
                            onTap: null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      value = !value;
                                    });
                                  },
                                  child: FlutterSwitch(
                                    width: 70,
                                    height: 30,
                                    valueFontSize: context.themeData.textTheme.bodyText1!.fontSize!,
                                    toggleSize: 25.0,
                                    value: value,
                                    borderRadius: 50.0,
                                    // padding: 5,
                                    showOnOff: true,
                                    onToggle: (val) => setState(() => value = val),
                                  ),
                                ),
                                Text('You decide what you want \nto share with the public',
                                    style: context.themeData.textTheme.bodyText1),
                              ],
                            ))
                      ]))),
          Container(height: ScreenUtil.screenHeight(context) * 0.10)
        ],
      ),
    );
  }
}
