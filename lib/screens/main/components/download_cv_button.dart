import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({super.key});

  Future<void> _launchURL(url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw ("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        _launchURL(Uri.parse("https://example.com"));},
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
