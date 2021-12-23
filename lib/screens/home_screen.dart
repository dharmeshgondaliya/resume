import 'package:flutter/material.dart';
import 'package:resume/screens/desktop_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Title(
        title: "Dharmesh",
        color: Colors.black,
        child: const SafeArea(
          child: DesktopView(),
        ),
      ),
    );
  }
}
