import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        TextButton(
          onPressed: (){},
          child: SvgPicture.asset("assets/icons/linkedin.svg"),
        ),
        TextButton(
          onPressed: (){},
          child: SvgPicture.asset("assets/icons/twitter.svg"),
        ),
        TextButton(
          onPressed: (){},
          child: SvgPicture.asset("assets/icons/github.svg"),
        ),
        Spacer()
      ],
    );
  }
}

