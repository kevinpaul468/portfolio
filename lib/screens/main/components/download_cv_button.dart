import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: FittedBox(
        child: Row(
          children: [
            Text("Download CV", style: TextStyle(color: Colors.white)),
            SizedBox(width: defaultPadding/2),
            SvgPicture.asset("assets/icons/download.svg")
          ],
        ),
      ),
    );
  }
}
