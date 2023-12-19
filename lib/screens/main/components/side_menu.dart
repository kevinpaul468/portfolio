import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'skills.dart';
import 'coding.dart';
import 'my_info.dart';
import 'knowledge.dart';
import 'download_cv_button.dart';
import 'contact_me.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: darkColor,
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoText(
                      title: "Residence",
                      text: "India",
                    ),
                    InfoText(
                      title: "City",
                      text: "Hyderabad",
                    ),
                    InfoText(
                      title: "College",
                      text: "GNITC",
                    ),
                    Skills(),
                    Divider(),
                    Coding(),
                    Divider(),
                    Knowledge(),
                    Divider(),
                    DownloadCvButton(),
                    Divider(),
                    ContactMe()
                  ],
              )
            )
        ),
        ]
            ),
      )
    );
  }
}


