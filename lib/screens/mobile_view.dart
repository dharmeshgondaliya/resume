import 'dart:js';

import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:resume/screens/widgets/lable.dart';

import '../utils.dart';
import 'widgets/experience.dart';
import 'widgets/skil_item.dart';
import 'widgets/social_media.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  _MobileViewState createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(250)),
                  child: Image.asset(
                    'asset/gd.png',
                    height: 175,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "Dharmesh Gondaliya",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              "I'm a Flutter Developer and Competitive Coder",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SocialMedia(
                      img: 'asset/facebook.png',
                      url: 'https://www.facebook.com/gondaliya.dharmesh.12'),
                  SocialMedia(
                      img: 'asset/linkedin.png',
                      url: 'https://www.linkedin.com/in/dharmeshgondaliya'),
                  SocialMedia(
                      img: 'asset/email.png',
                      url: 'mailto:gondaliyadharmesh2@gmail.com'),
                  SocialMedia(
                      img: 'asset/github.png',
                      url: 'https://github.com/dharmeshgondaliya'),
                  SocialMedia(
                      img: 'asset/youtube.png',
                      url:
                          'https://www.youtube.com/channel/UClYSORlVwlCjhJ8BWO1p4LA'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            getAboutRow(Icons.calendar_today, "21 September 1999"),
            getAboutRow(Icons.location_city, "Ahmedabad, Gujrat"),
            getAboutRow(Icons.email, "gondaliyadharmesh2@gmail.com"),
            getAboutRow(Icons.call, "+91 9773013895"),
            const SizedBox(height: 20),
            const Lable(lable: "Education"),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    Experience(
                      date: "2017",
                      title: "HSC Commerce",
                      description: "V.H.Khetani Vinay Mandir Morvada",
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(),
                    ),
                    SizedBox(height: 10),
                    Experience(
                      date: "2017 - 2020",
                      title: "BCA",
                      description: "S.S.S.D.I.I.T Gurukul Collage Junagadh",
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Lable(lable: "Experience"),
            const SizedBox(height: 10),
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: Experience(
                  date: "January 2021",
                  title: "Apptrait Solutions",
                  description:
                      "Worked with technologies like Android and Flutter."),
            ),
            const SizedBox(height: 20),
            const Lable(lable: "Projects"),
            const SizedBox(height: 15),
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
                stepIconSize: 35,
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget getAboutRow(IconData icon, String data) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [Icon(icon), const SizedBox(width: 10), Text(data)],
      ),
    );
  }
}
