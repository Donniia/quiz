import 'package:flutter/material.dart';

class CustomTip extends StatelessWidget {
  const CustomTip({super.key});

  @override
  Widget build(BuildContext context) {
    var theme  = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xffF2F4F7),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image(image: AssetImage("assets/images/Doctor.png")),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("""
Connects with doctor & 
get suggestions   
""",style: theme.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600
              ),),
    Text("""
connect now and get
expert insights
""",style: theme.textTheme.bodySmall),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Color(0xff7F56D9,
                    )
                  ),
                  child: Text("View Details" ,  style: theme.textTheme.bodyMedium!.copyWith(
                    color: Colors.white
                  ),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
