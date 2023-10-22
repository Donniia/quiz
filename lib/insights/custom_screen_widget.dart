import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quiz/insights/custom_item_widget.dart';
import 'package:quiz/insights/custom_tip.dart';

class CustomScreen extends StatelessWidget {

  List<Widget> topics =[
CustomItem(),
CustomItem(),
CustomItem(),
CustomItem(),
  ];
  CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hot Topics",
              style: theme.textTheme.bodyLarge,
            ),
            Row(
              children: [
                Text(
                  "see all",
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: Color(0xff5925DC)),
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
          items: topics,
          options: CarouselOptions(
            autoPlay: true, height: 240, enlargeCenterPage: true,),
        ),
        SizedBox(height: 20,),
        Text("Get Tips", style: theme.textTheme.bodyLarge,),
        CustomTip(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cycle Phases and Period",
              style: theme.textTheme.bodyLarge,
            ),
            Row(
              children: [
                Text(
                  "see all",
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: Color(0xff5925DC)),
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
        CustomTip(),
        CustomTip(),
      ],
    );
        
  }
}
