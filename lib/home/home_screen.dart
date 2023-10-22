import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:quiz/home/custom_exercise_widget.dart';
import 'package:quiz/home/custom_feature_widget.dart';
import 'package:quiz/home/custom_feeling_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Widget> features = [
    CustomFeature(colorHex: Color(0xffECFDF3)),
    CustomFeature(colorHex: Color(0xffFDF2FA)),
    CustomFeature(colorHex: Color(0xffF0F9FF)),
  ];
  CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/logo.png"),
                      width: 35,
                      height: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Moody",
                      style: theme.textTheme.titleLarge,
                    ),
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
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Hello, ",
                style: theme.textTheme.bodyLarge,
              ),
              Text("Sara Rose",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w900,
                  )),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "How are you feeling today?",
            style: theme.textTheme.bodyMedium!.copyWith(fontSize: 20),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomFeelingWidget(
                image: "assets/images/love_icon.png",
                title: "Love",
              ),
              CustomFeelingWidget(
                image: "assets/images/cool_icon.png",
                title: "Cool",
              ),
              CustomFeelingWidget(
                image: "assets/images/happy_icon.png",
                title: "Happy",
              ),
              CustomFeelingWidget(
                image: "assets/images/sad_icon.png",
                title: "Sad",
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Features",
                style: theme.textTheme.bodyLarge,
              ),
              Row(
                children: [
                  Text(
                    "see more",
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: Color(0xff027A48)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff027A48),
                    size: 15,
                  )
                ],
              )
            ],
          ),
          CarouselSlider(
            carouselController: _controller,
            items: features,
            options: CarouselOptions(
                autoPlay: false, height: 240, enlargeCenterPage: true,),
          ),
          // SmoothPageIndicator(controller: _controller, count: features.length),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Exercise",
                style: theme.textTheme.bodyLarge,
              ),
              Row(
                children: [
                  Text(
                    "see more",
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: Color(0xff027A48)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff027A48),
                    size: 15,
                  )
                ],
              ),

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomExercise(title: "Relaxation", Imagepath:"assets/images/relaxation_icon.png" , colorHex: Color(0xffF9F5FF)),
              CustomExercise(title: "Meditation", Imagepath: "assets/images/Meditation_icon.png", colorHex: Color(0xffFDF2FA))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomExercise(title: "Beathing", Imagepath:"assets/images/beathing_icon.png" , colorHex: Color(0xffFFFAF5)),
              CustomExercise(title: "Yoga", Imagepath: "assets/images/yoga_icon.png", colorHex: Color(0xffF0F9FF))
            ],
          ),

        ],
      ),
    );
  }
}
