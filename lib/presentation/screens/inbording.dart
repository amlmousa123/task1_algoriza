import 'package:flutter/material.dart';

import '../widgets/rectangle_indecator.dart';

class InBording extends StatefulWidget {
  const InBording({Key? key}) : super(key: key);

  @override
  State<InBording> createState() => _InBordingState();
}

class _InBordingState extends State<InBording> {
  int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFEAE7D1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          '7',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 30,
                              fontFamily: 'Arista Pro'),
                        ),
                        Text('krave', style: TextStyle(
                            color: Colors.teal,
                            fontSize: 30,
                            fontFamily: 'Arista Pro'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Center(child: RectangleIndecator(index:currentIndex),)
            ],
          ),
        ),
      ),
    );
  }
}
