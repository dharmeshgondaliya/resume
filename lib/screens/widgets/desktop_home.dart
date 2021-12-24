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
      ],
    );
  }
}
