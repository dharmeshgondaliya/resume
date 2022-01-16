import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';

import '../../utils.dart';
import 'project_detail.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _Projects();
}

class _Projects extends State<Projects> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return EnhanceStepper(
        currentStep: currentStep,
        controlsBuilder: (BuildContext context, ControlsDetails details) {
          return Container(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProjectDetails(
                        title: 'Technology',
                        items: steps[currentStep]['technology']),
                    const SizedBox(height: 15),
                    ProjectDetails(
                        title: 'Database',
                        items: [steps[currentStep]['database']]),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            currentStep == 0
                                ? details.onStepContinue!.call()
                                : details.onStepCancel!.call();
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 7.5, horizontal: 30),
                            decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              currentStep == 0 ? "Next" : "Previous",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
        onStepTapped: (step) {
          if (currentStep != step) setState(() => currentStep = step);
        },
        onStepContinue: () => setState(() => currentStep = 1),
        onStepCancel: () => setState(() => currentStep = 0),
        physics: const NeverScrollableScrollPhysics(),
        stepIconSize: 35,
        steps: steps.map((e) {
          return EnhanceStep(
            title: Text(e['title']),
            subtitle: Text(e['subtitle']),
            content: const SizedBox(),
            isActive: true,
          );
        }).toList());
  }
}
