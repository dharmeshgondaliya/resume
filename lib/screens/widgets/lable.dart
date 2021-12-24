import 'package:flutter/material.dart';

class Lable extends StatelessWidget {
  const Lable({Key? key, required this.lable}) : super(key: key);
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
