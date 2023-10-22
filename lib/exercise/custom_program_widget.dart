import 'package:flutter/material.dart';

class CustomProgramWidget extends StatelessWidget {
  final String duration;
  final String title;
  final String description;
  final String imagepath;
  final Color colorHex;
  const CustomProgramWidget({super.key, required this.duration, required this.title, required this.description, required this.imagepath, required this.colorHex,});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: BoxDecoration(
        color: colorHex,
        borderRadius: BorderRadius.circular(25)
      ),
      child:Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Container(
                 alignment: Alignment.center,
                 width: 70,
                 height: 40,
                 decoration: BoxDecoration(
                   color:Color(0xffFCFCFD),
                   borderRadius: BorderRadius.circular(25),border: Border.all(color: Color(0xffE4E7EC))
                 ),
                 child: Text(duration,style: theme.textTheme.bodyMedium,textAlign: TextAlign.center,),
               ),
              Text(title,style: theme.textTheme.bodyLarge,),
              Text(description,style: theme.textTheme.bodySmall,),
              Row(children: [
                Icon(Icons.alarm_rounded),
                Text("30 min"),
              ],)

            ],
          ),
          Image(image: AssetImage(imagepath),height: 150,width: 100,)
        ],
      ) ,
    );
  }
}
