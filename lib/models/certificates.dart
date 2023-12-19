import 'package:flutter/material.dart';

class Certificate {
  final String title , description,imagePath ;
  Certificate({required this.title , required this.description, required this.imagePath});
}

List <Certificate> certificates = [
  Certificate(title: "Solution challenge", description: "Certification of getting into top 30 teams in internal solution challenge", imagePath: "assets/images/solution_challenge.png"),
  Certificate(title: "Coders Clash", description: "certificate of participation in Coders Clash contest", imagePath: "assets/images/coders_clash.jpeg"),
];