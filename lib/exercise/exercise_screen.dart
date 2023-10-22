import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:quiz/exercise/custom_info_widget.dart';
import 'package:quiz/exercise/custom_tab_bar.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Image(image: AssetImage("assets/images/profile.png"),width: 60,height: 60,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello, Jade",style: theme.textTheme.bodyMedium,),
                        SizedBox(height: 5,),
                        Text("Ready to workout?",style: theme.textTheme.bodyLarge,),
                      ],),
                  ],
                ),
              ),
              badges.Badge(
                badgeContent: Text("1"),
                position: badges.BadgePosition.topEnd(),
                child: Icon(Icons.notifications_none_sharp,size: 25,),
              )
            ],
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.all(15),
            width: 230,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                     CustomInfoWidget(imagepath: "assets/images/heart_icon.png", title: "Heart Rate", descreiption: "81 BPM"),
                  Container(color: Colors.grey.withOpacity(0.5),width: 2,height: 60,),
                  CustomInfoWidget(imagepath: "assets/images/list_icon.png", title: "To-do", descreiption: "32.5 %"),
                  Container(color: Colors.grey.withOpacity(0.5),width: 2,height: 60,),
                  CustomInfoWidget(imagepath: "assets/images/calo_icon.png", title: "calo", descreiption: "1000")
                ],
            ),
          ),
          SizedBox(height: 20,),
          Text("Workout Programs",style: theme.textTheme.bodyLarge,),
          SizedBox(height: 15,),
          CustomTabbar(),


        ],
      ),
    );
  }
}
