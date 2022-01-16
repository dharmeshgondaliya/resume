import 'package:flutter/material.dart';

import 'experience.dart';
import 'lable.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Lable(lable: "Experience", img: 'asset/experience.png'),
        SizedBox(height: 15),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Experience(
              date: "January 2021 - Present",
              title: "Apptrait Solutions",
              description:
                  "Worked with technologies like Android and Flutter.\n\n\n - Ui Designing\n\n - Firebase Database\n\n - Firebase Authentication\n\n - Api Binding\n\n - InApp Purchase"),
        )
      ],
    );
  }
}
