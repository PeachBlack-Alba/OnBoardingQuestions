import 'package:flutter/material.dart';
import 'package:onboardingQuestions/screens/onBoardingSteps/OnBoardingStep3.dart';
import 'package:onboardingQuestions/screens/onBoardingSteps/OnboardingStep3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _numPages = 3;
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
        color: isActive ? Colors.redAccent : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color background = Color(0xFF001d5d);
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'img/topImage.png',
                          fit: BoxFit.cover,
                          width: size.width,
                          height: size.height / 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'WELCOME TO XXX,',
                                //'${state.user?.person?.firstName ?? ""}!',
                            style: TextStyle(
                              fontFamily: 'Foucd ndersGrotesqueXCond',
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
                            'We’re so happy that you decided to join us. We would love to get to know you better, so that we can offer you the full Base experience.',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    OnBoardingStep2(),
                    OnBoardingStep3(),
                  ],
                ),
              ),
            ],
          ),
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
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {

              },
              child: Text(
                'Get started',
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
                primary: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
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
