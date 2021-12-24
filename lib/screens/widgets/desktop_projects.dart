import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:enhance_stepper/enhance_stepper.dart';

import '../../utils.dart';

class DesktopProjects extends StatelessWidget {
  const DesktopProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Projects",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 40),
            EnhanceStepper(
                currentStep: 5,
                onStepTapped: (index) {
                  //js.context.callMethod('open', [steps[index]['subtitle']]);
                },
                controlsBuilder:
                    (BuildContext context, ControlsDetails details) {
                  return SizedBox();
                },
                physics: const NeverScrollableScrollPhysics(),
                stepIconSize: 50,
                steps: steps.map((e) {
                  return EnhanceStep(
                    icon: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      child: Image.asset(e['image']),
                    ),
                    title: Text(e['title']),
                    subtitle: Text(
                      e['subtitle'],
                      style: const TextStyle(color: Colors.blue),
                    ),
                    content: const SizedBox(),
                  );
                }).toList()),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
