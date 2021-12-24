import 'package:flutter/material.dart';
import 'package:resume/screens/widgets/experience.dart';
import 'package:resume/screens/widgets/lable.dart';
import 'package:resume/screens/widgets/skil_item.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "About Me",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 40),
            const Text(
                "I want to work with an organization where I can utilize my skills and which give me more opportunities to expand my knowledge and improve my skills."),
            const SizedBox(height: 40),
            Row(
              children: [
                getAboutRow(Icons.calendar_today, "21 September 1999"),
                const SizedBox(width: 20),
                getAboutRow(Icons.location_city, "Ahmedabad, Gujrat")
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                getAboutRow(Icons.email, "gondaliyadharmesh2@gmail.com"),
                const SizedBox(width: 20),
                getAboutRow(Icons.call, "+91 9773013895")
              ],
            ),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Lable(lable: "Skils"),
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
                const SizedBox(width: 40),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Lable(lable: "language"),
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
            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.cast_for_education_outlined, size: 15),
                          SizedBox(width: 5),
                          Lable(lable: "Education"),
                        ],
                      ),
                      const SizedBox(height: 15),
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
                                description:
                                    "S.S.S.D.I.I.T Gurukul Collage Junagadh",
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 40),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.work, size: 15),
                          SizedBox(width: 5),
                          Lable(lable: "Experience"),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        child: Experience(
                            date: "January 2021",
                            title: "Apptrait Solutions",
                            description:
                                "Worked with technologies like Android and Flutter."),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget getAboutRow(IconData icon, String data) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [Icon(icon), const SizedBox(width: 10), Text(data)],
        ),
      ),
    );
  }
}
