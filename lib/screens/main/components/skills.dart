import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Skills", style: TextStyle(color: Colors.white)),
        ),
        Row(
          children: [
            AnimatedCircularProgressIndicator(percentage: 0.5,label: "Flutter"),
            Padding(padding: EdgeInsets.symmetric(horizontal: defaultPadding/2)),
            AnimatedCircularProgressIndicator(percentage: 0.4,label: "React JS"),
            Padding(padding: EdgeInsets.symmetric(horizontal: defaultPadding/2)),
            AnimatedCircularProgressIndicator(percentage: 0.5,label: "Django")
          ],
        )
      ],
    );
  }
}

class AnimatedCircularProgressIndicator extends StatelessWidget {
  AnimatedCircularProgressIndicator({required this.percentage, required this.label});

  final double percentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: percentage),
                duration: defaultDuration,
                builder: (context , double value, child )=>
                    Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          value: value,
                          color: primaryColor,
                          backgroundColor: darkColor,
                        ),
                        Center(child: Text((value * 100).toInt().toString() + "%", style: TextStyle(color: Colors.white)))
                      ],
                    )
            ),
          ),
          SizedBox(height: defaultPadding/2,),
          Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white)
          )
        ],
      ),
    );
  }
}