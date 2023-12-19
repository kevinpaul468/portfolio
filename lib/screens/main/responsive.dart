import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget? desktop;
  final Widget? mobileLarge;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    this.desktop,
    this.mobileLarge,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
    MediaQuery.of(context).size.width < 500;

  static bool isMobileLarge(BuildContext context) =>
    MediaQuery.of(context).size.width < 700;

  static bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1024;


  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop ?? tablet;
    } else if (_size.width >= 700 && mobileLarge != null) {
      return mobileLarge!;
    } else if (_size.width >= 500) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
