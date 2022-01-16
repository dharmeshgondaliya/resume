import 'package:flutter/material.dart';
import 'package:resume/screens/desktop_view.dart';
import 'package:resume/screens/mobile_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size size = Size.zero;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Title(
        title: "Dharmesh",
        color: Colors.lightBlue,
        child: SafeArea(
          child: size.width > 480 ? const DesktopView() : const MobileView(),
        ),
      ),
    );
  }
}
