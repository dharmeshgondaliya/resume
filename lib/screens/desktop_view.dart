import 'package:flutter/material.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  _DesktopViewState createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  int currentMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getMenus(),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: const Color(0xffF1EDFF),
            child: currentMenu == 0
                ? getHomeMenu()
                : currentMenu == 1
                    ? AboutMenu()
                    : ProjectMenu(),
          )),
        ],
      ),
    );
  }

  Widget getMenus() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width * 0.2,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: const [
                SizedBox(height: 40),
                Text(
                  "Dharmesh",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              getMenu("Home", 0, () => setState(() => currentMenu = 0)),
              getMenu("About Me", 1, () => setState(() => currentMenu = 1)),
              getMenu("Projects", 2, () => setState(() => currentMenu = 2)),
            ],
          ),
          const Expanded(child: SizedBox())
        ],
      ),
    );
  }

  Widget getMenu(String txt, int menu, Function() callback) {
    return GestureDetector(
      onTap: () => callback(),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1))),
              child: Text(txt),
            ),
          ),
        ],
      ),
    );
  }

  Widget getHomeMenu() {
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
          children: [],
        )
      ],
    );
  }

  Widget AboutMenu() {
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

  Widget ProjectMenu() {
    return Container();
  }
}
