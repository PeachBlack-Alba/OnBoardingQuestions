import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:thebase_app/generated/models/customers.dart';
import 'package:thebase_app/ui/routing/routes.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/DietScreen.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/GenderScreen.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/LanguagesScreen.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/MusicScreen.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/OccupationScreen.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/OnBoardingCompletedScreen.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/components/HobbiesTags.dart';
import 'package:thebase_app/ui/styles/Colors.dart';

import 'questionScreens/MusicScreen.dart';

class OnboardingQuestionsScreen extends StatefulWidget {
  final CustomerAccountModel customer;

  OnboardingQuestionsScreen(this.customer);

  @override
  State<StatefulWidget> createState() => OnboardingQuestionsScreenState();
}

class OnboardingQuestionsScreenState extends State<OnboardingQuestionsScreen> {
  final int _numPages = 7;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    var list = <Widget>[];
    for (var i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  void nextPage(){
    _pageController.animateToPage(_pageController.page.toInt() + 1,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn
    );
  }

  void previousPage(){
    _pageController.animateToPage(_pageController.page.toInt() -1,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? TheBaseColors.lightRed : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color background = Color(0xFF001d5d);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //resizeToAvoidBottomPadding: false,
      backgroundColor: background,
      body:  Column(
        children: [
          Expanded(
            child: PageView(
              physics: ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(
                      () {
                    _currentPage = page;
                  },
                );
              },
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/img/topImage4.png',
                        fit: BoxFit.cover,
                        width: size.width,
                        // height: size.height * 0.30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'WHAT ARE YOUR HOBBIES\nAND INTERESTS? ',
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
                      HobbiesTags(),
                    ],
                  ),
                ),
                LanguagesScreen(),
                MusicScreen(),
                DietScreen(),
                SingleChildScrollView(child: OccupationScreen()),
                GenderScreen(),
                OnBoardingCompletedScreen(),
              ],
            ),
          ),
        ],
      ),

      bottomSheet: _currentPage == _numPages - 1
          ? Container(
        height: size.height * 0.10,
        color: background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children: _buildPageIndicator()),
            //CHANGE BUTTON
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: TheBaseColors.lightRed,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                pushNewScreen(
                  context,
                  screen: Routes.getWidgetForRoute(Routes.questions, context),
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              child: Text(
                'COMPLETE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      )
          : Container(
        height: size.height * 0.10,
        color: background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children: _buildPageIndicator()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: TheBaseColors.lightRed,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                nextPage();
              },
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
