import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/main/components/side_menu.dart';
import 'package:portfolio/screens/main/responsive.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});

  final List<Widget> children ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: Responsive.isDesktop(context) ? null :
      AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu, color: Colors.white,),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            color: darkColor,
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
                SizedBox(width: defaultPadding,),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children
                      ],
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
      drawer: SideMenu(),
    );
  }
}

