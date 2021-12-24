import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  const Experience(
      {Key? key,
      required this.date,
      required this.title,
      required this.description})
      : super(key: key);
  final String date;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.calendar_today_sharp, size: 15),
              const SizedBox(width: 5),
              Text(date)
            ],
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(description)
        ],
      ),
    );
  }
}
