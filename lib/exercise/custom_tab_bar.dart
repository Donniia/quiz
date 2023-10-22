import 'package:flutter/material.dart';
import 'package:quiz/exercise/custom_program_widget.dart';

class CustomTabbar extends StatefulWidget {
  @override
  State<CustomTabbar> createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  int selectedIndex = 0;
  List<Widget> screens = [
    CustomProgramWidget(
        duration: "7 days",
        title: "Morning Yoga",
        description: "Improve mental focus",
        imagepath: "assets/images/yoga_workout.png", colorHex: Color(0xffF8F9FC),),
    
    CustomProgramWidget(
        duration: "3 days",
        title: "Plank Exercise",
        description: "Improve posture and stability",
        imagepath: "assets/images/plank_workout.png", colorHex: Color(0xffF9F5FF),),
    CustomProgramWidget(
        duration: "7 days",
        title: "Morning Yoga",
        description: "Improve mental focus",
        imagepath: "assets/images/yoga_workout.png", colorHex: Color(0xffFDF2FA),),
    CustomProgramWidget(
        duration: "3 days",
        title: "Plank Exercise",
        description: "Improve posture and stability",
        imagepath: "assets/images/plank_workout.png", colorHex: Color(0xffF0F9FF),),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Container(
            height: 55,
            child: TabBar(
                labelColor: Color(0xff363F72),
                unselectedLabelColor: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 20),
                indicatorColor: Color(0xff363F72),
                isScrollable: true,
                tabs: [
                  Tab(
                    text: "All Type",
                  ),
                  Tab(
                    text: "Full Body",
                  ),
                  Tab(
                    text: "Upper",
                  ),
                  Tab(
                    text: "Lower",
                  ),
                ]),
          ),
          Container(
            width: 400,
            height: 400,
            child: TabBarView(
              children: [
                Container(
                  width: 400,
                  height: 400,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return Container(
                          height: 250,
                          width: 300,
                          child: screens[0],
                        );
                      }),
                ),
                Container(
                  width: 400,
                  height: 400,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return Container(
                          height: 250,
                          width: 300,
                          child: screens[1],
                        );
                      }),
                ),
                Container(
                  width: 400,
                  height: 400,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return Container(
                          height: 250,
                          width: 300,
                          child: screens[2],
                        );
                      }),
                ),
                Container(
                  width: 400,
                  height: 400,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return Container(
                          height: 250,
                          width: 300,
                          child: screens[3],
                        );
                      }),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
//
