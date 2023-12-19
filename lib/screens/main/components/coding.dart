import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
class Coding extends StatelessWidget {
  const Coding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding", style: TextStyle(color: Colors.white)),
        ),
        AnimatedLinearProgressIndicator(value: 0.8, label: "Dart",),
        AnimatedLinearProgressIndicator(value: 0.9, label: "Python",),
        AnimatedLinearProgressIndicator(value: 0.65, label: "Java",),
        AnimatedLinearProgressIndicator(value: 0.6, label: "C++",),
        AnimatedLinearProgressIndicator(value: 0.45, label: "Bash",),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final double value;
  final String label;
  AnimatedLinearProgressIndicator({required this.value ,required this.label});

  @override
  Widget build(BuildContext context) {
    return        TweenAnimationBuilder(tween: Tween<double>(begin: 0, end: value), duration: defaultDuration, builder: (context, double value , child)=>
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label, style: TextStyle(color: Colors.white)),
                Text((value*100).toInt().toString()+"%", style: TextStyle(color: Colors.white),)
              ],
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
            SizedBox(height: defaultPadding/2,)
          ],
        )
    );
  }
}
