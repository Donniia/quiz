import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/insights/tab_bar.dart';

class InsightsScreen extends StatefulWidget {
  const InsightsScreen({super.key});

  @override
  State<InsightsScreen> createState() => _InsightsScreenState();
}

class _InsightsScreenState extends State<InsightsScreen> {
  @override
  bool _isSelected = false;
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/logo2.png"),
                height: 30,
                width: 30,
              ),
              Text(
                "Alice Care",
                style: GoogleFonts.milonga(
                    fontSize: 24, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            height: 50,
            width: 200,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Color(0xffD0D5DD)),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Articles,video,and Audio More,...",
                  hintStyle: theme.textTheme.bodyMedium!.copyWith(
                    color: Color(0xff667085),
                  )),
            ),
          ),
         Tab_Bar()
        ],
      ),
    );
  }
}
