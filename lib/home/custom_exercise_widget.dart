import 'package:flutter/material.dart';

class CustomExercise extends StatelessWidget {
  final Color colorHex;
  final String Imagepath;
  final String title;
  const CustomExercise({required this.title,required this.Imagepath,required this.colorHex});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      width: 170,
      height: 70,
      decoration: BoxDecoration(
        color: colorHex,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(Imagepath),
            width: 30,
            height: 30,
          ),
          SizedBox(width: 10,),
          Text(
            title,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
