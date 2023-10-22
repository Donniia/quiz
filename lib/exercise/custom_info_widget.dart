import 'package:flutter/material.dart';

class CustomInfoWidget extends StatelessWidget {
  final String imagepath;
  final String title;
  final String descreiption;
  const CustomInfoWidget(
      {required this.imagepath,
      required this.title,
      required this.descreiption});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageIcon(
                AssetImage(imagepath),
                color: Color(0xff717BBC),
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: theme.textTheme.bodySmall,
              )
            ],
          ),
          Text(
            descreiption,
            style: theme.textTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
