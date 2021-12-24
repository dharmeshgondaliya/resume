import 'package:flutter/material.dart';
import 'package:resume/screens/widgets/desktop_about.dart';
import 'package:resume/screens/widgets/desktop_home.dart';
import 'package:resume/screens/widgets/desktop_projects.dart';
import 'package:resume/screens/widgets/menus.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  _DesktopViewState createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  int currentMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Menus(
              current: currentMenu,
              callback: (int menu) => setState(() => currentMenu = menu)),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: const Color(0xffF1EDFF),
            child: currentMenu == 0
                ? const DesktopHome()
                : currentMenu == 1
                    ? const DesktopAbout()
                    : const DesktopProjects(),
          )),
        ],
      ),
    );
  }
}
