import 'package:flutter/material.dart';

class OnBoardingCompletedScreen extends StatefulWidget {
  @override
  OnBoardingCompletedScreenState createState() => OnBoardingCompletedScreenState();
}

class OnBoardingCompletedScreenState extends State<OnBoardingCompletedScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color background = Color(0xFF001d5d);
    return
        // BlocBuilder<AuthBloc, AuthState>(
        // builder: (context, state) =>
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/img/topImage10.png',
          fit: BoxFit.cover,
          width: size.width,
          height: size.height * 0.60,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Thank you',
            // 'THANK YOU,${state.user?.person?.firstName ?? ""}!',
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
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Imperdiet amet, morbi venenatis mattis. Tempor, egestas cursus faucibus aenean.',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'FoundersGrotesqueXCond',
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
