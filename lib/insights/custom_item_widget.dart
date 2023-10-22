import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/self_care.webp"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(25)),
      width: 350,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.center,
            width: 100,
            height: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffFEF0C7)),
            child: Text(
              "SELF-CARE",
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: Color(0xff93370D)),
            ),
          ),
          Text(
            """
10 Easy Self-Care Ideas That Can
Help Boost Your Health         
                  """,
            style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
