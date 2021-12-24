import 'package:flutter/material.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Text(
            "About Me",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 40),
          const Text(
              "I want to work with an organization where I can utilize my skills and which give me more opportunities to expand my knowledge and improve my skills."),
          const SizedBox(height: 40),
          Row(
            children: [
              getAboutRow(Icons.calendar_today, "21 September 1999"),
              const SizedBox(width: 20),
              getAboutRow(Icons.location_city, "Ahmedabad, Gujrat")
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              getAboutRow(Icons.email, "gondaliyadharmesh2@gmail.com"),
              const SizedBox(width: 20),
              getAboutRow(Icons.call, "+91 9773013895")
            ],
          ),
        ],
      ),
    );
  }

  Widget getAboutRow(IconData icon, String data) {
    return Expanded(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [Icon(icon), const SizedBox(width: 10), Text(data)],
          )),
    );
  }
}
