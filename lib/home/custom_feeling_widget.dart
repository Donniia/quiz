import 'package:flutter/material.dart';

class CustomFeelingWidget extends StatelessWidget {
   CustomFeelingWidget({required this.image,required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xffE4E7EC),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Image(image: AssetImage(image),)
        ),
        Text(title,style: theme.textTheme.bodyMedium,)
      ],
    );
  }
}
