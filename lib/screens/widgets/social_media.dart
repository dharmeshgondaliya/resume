import 'package:flutter/material.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({Key? key, required this.img, required this.url})
      : super(key: key);
  final String img;
  final String url;

  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  double size = 35;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() => size = 40);
      },
      onExit: (event) {
        setState(() => size = 35);
      },
      child: Container(
        width: size,
        height: size,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Image.asset(widget.img),
      ),
    );
  }
}
