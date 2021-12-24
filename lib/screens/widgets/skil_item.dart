import 'package:flutter/material.dart';

class SkilItem extends StatelessWidget {
  const SkilItem({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.only(bottom: 5),
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(width: 0.5))),
      child: Text(text),
    );
  }
}
