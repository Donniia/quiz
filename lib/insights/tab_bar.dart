import 'package:flutter/material.dart';
import 'package:quiz/insights/custom_screen_widget.dart';


class Tab_Bar extends StatefulWidget {
  const Tab_Bar({super.key});

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {
  List<Widget> screens=[
    CustomScreen(),
    Center(child: Text("News"),),
    Center(child: Text("Most Viewed"),),
    Center(child: Text("Saved"),),
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
              labelColor: Color(0xffD6BBFB),
              unselectedLabelColor: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 20),
              indicatorColor: Color(0xffD6BBFB),
              isScrollable: true,
              tabs: [
               Tab(text: "Discover",),
               Tab(text: "News",),
               Tab(text: "Most Viewed",),
               Tab(text: "Saved",),
            ],

            )
          ),
          Container(
            width: 400,
            height:550,
            child: TabBarView(
              children: [

                Container(
                  width: 400,
                  height: 400,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 1,
                      itemBuilder: (_, index) {
                        return Container(
                          height: 550,
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
                      itemCount: 1,
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
                      itemCount: 1,
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
                      itemCount: 1,
                      itemBuilder: (_, index) {
                        return Container(
                          height: 250,
                          width: 300,
                          child: screens[3],
                        );
                      }),
                ),
              ],
            ),
          )

        ],
      ),
    );

  }
}
