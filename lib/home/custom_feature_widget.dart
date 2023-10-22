import 'package:flutter/material.dart';

class CustomFeature extends StatelessWidget {
  const CustomFeature({required this.colorHex});
   final Color colorHex;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: 330,
      height: 190,
      decoration: BoxDecoration(
          color: colorHex, borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Positive Vibes",
                style: theme.textTheme.bodyLarge!
                    .copyWith(color: Color(0xff344054)),
              ),
              SizedBox(height: 10,),
              Text(
                """
Boost your mood with 
positive vibes
              """,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
              Row(children: [
                Icon(Icons.play_circle,color: Color(0xff32D583),),
                Text("10 min",style: theme.textTheme.bodyMedium,)
              ],)
            ],
          ),
          Image(image: AssetImage("assets/images/Walking_the_Dog.png"),width: 90,)
        ],
      ),
    );
  }
}
