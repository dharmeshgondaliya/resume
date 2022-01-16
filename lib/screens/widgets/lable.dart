import 'package:flutter/material.dart';

class Lable extends StatelessWidget {
  const Lable({Key? key, required this.lable, required this.img})
      : super(key: key);
  final String lable;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(img, width: 25, height: 25),
        const SizedBox(width: 10),
        Text(
          lable,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
