import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:thebase_app/ui/routing/routes.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/components/MusicTags.dart';
import 'package:thebase_app/ui/styles/Colors.dart';

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
                    pushNewScreen(
                      context,
                      screen: Routes.getWidgetForRoute(Routes.viewAllPopUp, context),
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,);
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(color: TheBaseColors.lightRed),
                  )),
            ],
          ),
        ),
        MusicTags(),
      ],
    );
  }
}