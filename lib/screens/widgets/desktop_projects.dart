import 'package:flutter/material.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:resume/screens/widgets/lable.dart';
import 'package:resume/screens/widgets/project_detail.dart';
import 'package:resume/screens/widgets/projects.dart';

import '../../utils.dart';

class DesktopProjects extends StatefulWidget {
  const DesktopProjects({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _DesktopProjects();
}

class _DesktopProjects extends State<DesktopProjects> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.transparent,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 40),
            Text(
              "Projects",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            Projects(),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
