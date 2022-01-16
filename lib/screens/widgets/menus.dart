import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  const Menus({Key? key, required this.callback, required this.current})
      : super(key: key);
  final Function(int no) callback;
  final int current;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width * 0.2,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 40),
                InkWell(
                  onTap: () => callback(0),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.lightBlue),
                      ),
                    ),
                    child: const Text(
                      "Dharmesh",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => callback(0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: current == 0
                                  ? Colors.lightBlue
                                  : Colors.black,
                            ),
                          ),
                        ),
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color:
                                current == 0 ? Colors.lightBlue : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => callback(1),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: current == 1
                                  ? Colors.lightBlue
                                  : Colors.black,
                            ),
                          ),
                        ),
                        child: Text(
                          'About Me',
                          style: TextStyle(
                            color:
                                current == 1 ? Colors.lightBlue : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => callback(2),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: current == 2
                                  ? Colors.lightBlue
                                  : Colors.black,
                            ),
                          ),
                        ),
                        child: Text(
                          'Projects',
                          style: TextStyle(
                            color:
                                current == 2 ? Colors.lightBlue : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
