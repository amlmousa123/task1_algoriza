import 'package:flutter/material.dart';
import '../widgets/onBording_data.dart';
import '../widgets/rectangle_indicator.dart';

class InBording extends StatefulWidget {
  const InBording({Key? key}) : super(key: key);

  @override
  State<InBording> createState() => _InBordingState();
}

class _InBordingState extends State<InBording> {
  int currentIndex = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
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
              RichText(
                text: TextSpan(
                    text: '7',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'krave',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 57,
                          fontFamily: 'Arista Pro',
                        ),
                      )
                    ]),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                         Image.asset(
                              myData[index].imageUrl,
                              fit: BoxFit.cover,
                           width: 300,
                           height: 200,
                            ),
                          SizedBox(height: 20,),
                          Text(
                            myData[index].title,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20,),
                          Text(
                            myData[index].subtitle,
                            style:
                                TextStyle(fontSize: 20, color: Colors.black45),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: RectangleIndicator(index: currentIndex),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white,
                    fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      //padding: EdgeInsets.all(20),
                      primary: Colors.teal,
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              SizedBox(height: 20,),
              RichText(
                  text: TextSpan(
                      text: "Don/'t have an account? ",
                      style: TextStyle(color: Colors.black,
                      fontSize: 20),
                      children: [
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(color: Colors.teal
                      ,fontSize: 20),
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
