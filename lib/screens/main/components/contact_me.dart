import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  Future<void> _launcher(url) async {
     if (await canLaunchUrl(url)) {
       await launchUrl(url);
     } else {
       throw 'Could not launch $url';
     }
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        TextButton(
          onPressed: (){
            _launcher(Uri.parse("https://www.linkedin.com/in/kevinpaul468"));
          },
          child: SvgPicture.asset("assets/icons/linkedin.svg"),
        ),
        TextButton(
          onPressed: (){
            _launcher(Uri.parse("https://twitter.com/kevinpaul468"));
          },
          child: SvgPicture.asset("assets/icons/twitter.svg"),
        ),
        TextButton(
          onPressed: (){
            _launcher(Uri.parse("https://github.com/kevinpaul468"));
          },
          child: SvgPicture.asset("assets/icons/github.svg"),
        ),
        Spacer()
      ],
    );
  }
}

