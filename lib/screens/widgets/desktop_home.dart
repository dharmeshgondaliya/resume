import 'package:flutter/material.dart';
import 'package:resume/screens/widgets/social_media.dart';

import '../../utils.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(250)),
          child: Image.asset(
            'asset/gd1.png',
            height: 200,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Dharmesh Gondaliya",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        const Text(
          "I'm a Flutter Developer and Competitive Coder",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: socialMedias
                .map((e) => SocialMedia(img: e['image'], url: e['url']))
                .toList(),
          ),
        ),
      ],
    );
  }
}
