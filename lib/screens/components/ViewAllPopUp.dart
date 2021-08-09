import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:thebase_app/ui/routing/routes.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/components/PrivacyToggle.dart';
import 'package:thebase_app/ui/screens/onboarding/questionScreens/components/RoundedFilterChipWidget.dart';
import 'package:thebase_app/ui/styles/Colors.dart';

class ViewAllPopUp extends StatefulWidget {
  @override
  _ViewAllPopUpState createState() => _ViewAllPopUpState();
}

class _ViewAllPopUpState extends State<ViewAllPopUp> {
  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 30,
                    color: TheBaseColors.lightRed,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text('Privacy'),
                    ),
                    PrivacyToggle()
                  ],
                ),
              ],
            ),
          ),
          //SEARCH BAR
          TextField(
            onTap: () {
              pushNewScreen(
                context,
                screen: Routes.getWidgetForRoute(Routes.onBoardingSearchBar, context),
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            controller: _controller,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: TheBaseColors.lightRed, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: TheBaseColors.lightRed, width: 2.0),
              ),
              hintText: 'Search',
              suffixIcon: IconButton(
                onPressed: _controller.clear,
                icon: Icon(Icons.clear),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'INTERESTS AND HOBBIES',
              style: TextStyle(
                fontFamily: 'FoundersGrotesqueXCond',
                color: Colors.black,
                fontSize: 22,
                letterSpacing: 1,
              ),
            ),
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 5.0,
            children: <Widget>[
              RoundedFilterChipWidget(chipName: 'Boxing'),
              RoundedFilterChipWidget(chipName: 'Soccer'),
              RoundedFilterChipWidget(chipName: 'Cooking'),
              RoundedFilterChipWidget(chipName: 'Hiking'),
              RoundedFilterChipWidget(chipName: 'Cinema'),
            ],
          ),

          Divider(
            height: 20,
            thickness: 5,
          ),
          Row(
            children: [
              Icon(Icons.check),
              SizedBox(
                width: 10,
              ),
              Text('Sports'),
            ],
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 5.0,
            children: <Widget>[
              RoundedFilterChipWidget(chipName: 'Boxing'),
              RoundedFilterChipWidget(chipName: 'Soccer'),
              RoundedFilterChipWidget(chipName: 'Cooking'),
              RoundedFilterChipWidget(chipName: 'Hiking'),
              RoundedFilterChipWidget(chipName: 'Cinema'),
            ],
          ),
          Divider(
            height: 20,
            thickness: 5,
          ),
          Row(
            children: [
              Icon(Icons.wb_sunny_outlined),
              SizedBox(
                width: 10,
              ),
              Text('Food'),
            ],
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runSpacing: 5.0,
            children: <Widget>[
              RoundedFilterChipWidget(chipName: 'Boxing'),
              RoundedFilterChipWidget(chipName: 'Soccer'),
              RoundedFilterChipWidget(chipName: 'Cooking'),
              RoundedFilterChipWidget(chipName: 'Hiking'),
              RoundedFilterChipWidget(chipName: 'Cinema'),
            ],
          ),
          Divider(
            height: 20,
            thickness: 5,
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: TheBaseColors.lightRed,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
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
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
