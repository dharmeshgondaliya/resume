import 'package:flutter/material.dart';
import 'package:resume/screens/widgets/social_media.dart';

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
            'asset/gd.png',
            height: 250,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SocialMedia(img: 'asset/facebook.png', url: ''),
            SocialMedia(img: 'asset/linkedin.png', url: ''),
            SocialMedia(img: 'asset/email.png', url: ''),
            SocialMedia(img: 'asset/github.png', url: ''),
            SocialMedia(img: 'asset/youtube.png', url: ''),
          ],
        ),
      ],
    );
  }
}
