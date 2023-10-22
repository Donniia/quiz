import 'package:flutter/material.dart';
import 'package:quiz/exercise/exercise_screen.dart';
import 'package:quiz/home/home_screen.dart';
import 'package:quiz/insights/insights_screen.dart';
import 'package:badges/badges.dart';

class HomeLayout extends StatefulWidget {
  static String routeName = "home";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedindex = 0;

  List<Widget> screens = [HomeScreen(), ExerciseScreen(), InsightsScreen()];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/home_icon.png")),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/exercise_icon.png")),
                label: "Excercise"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/insights_icon.png")),
                label: "Insights"),
          ],
        ),
      ),
    );
  }
}
