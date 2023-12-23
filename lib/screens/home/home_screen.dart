import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/certificates.dart';
import 'package:portfolio/models/projects.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import '../main/responsive.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
        children:[
          MyBanner(),
          Responsive(
            mobile: ProjectsList(crossAxisCount: 1, childAspectRatio: 1.7,),
            mobileLarge: ProjectsList(),
            tablet: ProjectsList(crossAxisCount: 2,),
            desktop: ProjectsList(),
          ),
          Responsive(
            mobile: Certificates(crossAxisCount: 1, childAspectRatio: 1.7,),
            mobileLarge: Certificates(),
            tablet: Certificates(crossAxisCount: 2,),
            desktop: Certificates(),
          )
        ]
    );
  }
}


class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/bg.jpeg",
              fit: BoxFit.cover,
            ),
            Container(color: darkColor.withOpacity(0.66),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "welcome to my amazing \n art space!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
                      : Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(color: Colors.white),
                  child: AnimatedTextKit(animatedTexts: [
                    TyperAnimatedText("responsive web and mobile app."),
                    TyperAnimatedText("made using dart and flutter."),
                    TyperAnimatedText("chat app with dark and light theme."),
                  ],
                      isRepeatingAnimation: true),
                ),
              ],
            ),
          ]
      ),
    );
  }
}


class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key, this.crossAxisCount = 3 , this.childAspectRatio = 1.3});
  final int crossAxisCount;
  final double childAspectRatio;

  Future<void> _launchURL(url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw ("Could not launch $url");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding,),
          child: Text("My Projects",style: TextStyle(color: Colors.white,),),
        ),
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
        ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: projects.length,
            itemBuilder: (context , index)=>Container(
              color: secondaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(projects[index].name, style: TextStyle(color: Colors.white),maxLines: 2, overflow: TextOverflow.ellipsis,),
                  Spacer(),
                  Text(projects[index].description, style: TextStyle(color: Colors.white),maxLines: 5, overflow: TextOverflow.ellipsis,),
                  Spacer(),
                  TextButton(onPressed: (){
                    _launchURL(Uri.parse(projects[index].githubLink));
                  }, child: Text("Read More>>", style: TextStyle(color: primaryColor),),)
                ],
              ),
            )
        )
      ],
    );
  }
}


class Certificates extends StatelessWidget {
  const Certificates({super.key, this.crossAxisCount = 3 , this.childAspectRatio = 1.3});

  final int crossAxisCount;
  final double childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(vertical: defaultPadding), child: Text("Certificates",style: TextStyle(color: Colors.white),),),
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: childAspectRatio,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding,
            ),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap:  true,
            itemCount: certificates.length,
            itemBuilder: (context, index)=>Container(
                color: secondaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(certificates[index].title, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white,), maxLines: 2,),
                  // Spacer(),
                  Flexible(child: Image.asset(certificates[index].imagePath, fit: BoxFit.contain,)),
                  // Spacer(),
                  Text(certificates[index].description,maxLines: 4,overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white),),
                  // Spacer(),
                  TextButton(onPressed: (){}, child: Text("Read More>>",style: TextStyle(color: primaryColor),))
                ],
              ),
            )
        )
      ],
    );
  }
}
