import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          color: bgColor,
          child: Column(
              children: [
                Spacer(flex: 2,),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/kevin.jpeg"),
                ),
                Spacer(),
                Text("Kevin Paul", style: TextStyle(color: Colors.white)),
                Text("flutter developer \n GDSC GNI core team member", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                Spacer(flex: 2,)
              ]
          ),
        )
    );
  }
}

class InfoText extends StatelessWidget {
  final String title, text;
  InfoText({required this.title , required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: Colors.white)),
        Text(text, style: TextStyle(color: Colors.white))
      ],
    );
  }
}