import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Knoledge", style: TextStyle(color: Colors.white)),
        ),
        KnowledgeText(knowledge: "Flutter ,Dart",),
        KnowledgeText(knowledge: "git and version control"),
        KnowledgeText(knowledge: "Node js , React js")
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  final String knowledge;
  KnowledgeText({required this.knowledge});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        SizedBox(width: defaultPadding/2),
        Text(knowledge, style: TextStyle(color: Colors.white))
      ],
    );
  }
}
