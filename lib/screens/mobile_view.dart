import 'dart:js';

import 'package:flutter/material.dart';
import 'package:resume/screens/widgets/education.dart';
import 'package:resume/screens/widgets/experiences.dart';
import 'package:resume/screens/widgets/lable.dart';
import 'package:resume/screens/widgets/projects.dart';

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
                    'asset/gd1.png',
                    height: 135,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
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
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            getAboutRow(Icons.calendar_today, "21 September 1999"),
            getAboutRow(Icons.location_city, "Ahmedabad, Gujrat"),
            getAboutRow(Icons.email, "gondaliyadharmesh2@gmail.com"),
            getAboutRow(Icons.call, "+91 9773013895"),
            const SizedBox(height: 20),
            const Text(
                "I want to work with an organization where I can utilize my skills and which give me more opportunities to expand my knowledge and improve my skills."),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Lable(
                        lable: "Skils",
                        img: 'asset/skills (1).png',
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Expanded(child: SkilItem(text: "Android")),
                          SizedBox(width: 10),
                          Expanded(child: SkilItem(text: "Flutter")),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(child: SkilItem(text: "Java")),
                          SizedBox(width: 10),
                          Expanded(child: SkilItem(text: "Kotlin")),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(child: SkilItem(text: "C#")),
                          SizedBox(width: 10),
                          Expanded(child: SizedBox()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Lable(
                          lable: "language", img: 'asset/languages.png'),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Expanded(child: SkilItem(text: "Gujarati")),
                          SizedBox(width: 10),
                          Expanded(child: SkilItem(text: "Hindi")),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(child: SkilItem(text: "English")),
                          SizedBox(width: 10),
                          Expanded(child: SizedBox())
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Experiences(),
            const SizedBox(height: 20),
            const Education(size: 0),
            const SizedBox(height: 20),
            const Lable(
              lable: "Projects",
              img: 'asset/project.png',
            ),
            const SizedBox(height: 15),
            Row(
              children: const [
                Expanded(child: Projects()),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Lable(
                  lable: "Area of Interest",
                  img: 'asset/hobbies.png',
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Expanded(child: SkilItem(text: "Coding")),
                    SizedBox(width: 10),
                    Expanded(child: SkilItem(text: "Software Development")),
                    SizedBox(width: 10),
                    Expanded(child: SkilItem(text: "Listening Song")),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: socialMedias
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: SocialMedia(img: e['image'], url: e['url']),
                        ))
                    .toList(),
              ),
            ),
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
