import 'package:flutter/material.dart';

import 'experience.dart';
import 'lable.dart';

class Education extends StatelessWidget {
  const Education({Key? key, required this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Lable(lable: "Education", img: 'asset/education.png'),
        const SizedBox(height: 15),
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const Experience(
                  date: "2017",
                  title: "HSC Commerce",
                  description: "V.H.Khetani Vinay Mandir Morvada",
                ),
                SizedBox(height: size),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(),
                ),
                SizedBox(height: size),
                const Experience(
                  date: "2017 - 2020",
                  title: "BCA",
                  description: "S.S.S.D.I.I.T Gurukul Collage Junagadh",
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
