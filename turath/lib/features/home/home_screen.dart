import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 20,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.13,
                    decoration: BoxDecoration(
                      color: const Color(0xFF817F7F).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.mic_none,
                          color: Color.fromARGB(255, 200, 135, 107),
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: const Color.fromARGB(255, 200, 135, 107)
                              .withOpacity(0.8),
                        ),
                        border: InputBorder.none,
                        label: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 200, 135, 107)
                                .withOpacity(0.8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    ));
  }
}
