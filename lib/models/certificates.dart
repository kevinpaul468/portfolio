import 'package:flutter/material.dart';

class Certificate {
  final Image certificate ;
  final String title , description;
  Certificate({required this.title , required this.description, required this.certificate});
}

List <Certificate> certificates = [
  Certificate(title: "GCCF", description: "Certification of successfully completing google cloud computing foundations", certificate: Image.asset(".")),
  Certificate(title: "Coders Clash", description: "certificate of participation in Coders Clash contest", certificate: Image.asset("."))
];