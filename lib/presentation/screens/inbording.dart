import 'package:flutter/material.dart';

import '../widgets/inbording_screen_model.dart';
import '../widgets/rectangle_indicator.dart';

class InBording extends StatefulWidget {
  const InBording({Key? key}) : super(key: key);

  @override
  State<InBording> createState() => _InBordingState();
}

class _InBordingState extends State<InBording> {
  int currentIndex = 0;
  final controller = PageController();
  List <Data>myData = [
    Data(
      imageUrl: 'assets/images/onboarding1',
      title:
          'Getting to the gym and prioritizing your fitness isn’t easy—we know! ',
      subtitle:
          'But staying on track and working toward your health goals is essential',
    ),
    Data(
      imageUrl: 'assets/images/onboarding2',
      title: 'All progress takes place outside the comfort zone.',
      subtitle:
          'Bodybuilding is much like any other sport. To be successful, you must dedicate yourself 100% to your training, diet and mental approach.',
    ),
    Data(
      imageUrl: 'assets/images/onboarding3',
      title: 'Put all excuses aside and remember this: You are capable.',
      subtitle:
          'If we could give every individual the right amount of nourishment and exercise, not too little and not too much, we would have found the safest way to health.',
    ),
  ];
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '7',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'krave',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 57,
                            fontFamily: 'Arista Pro',
                          ),
                          //textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    Container(
                      height: 400,
                      child: PageView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Image.asset(
                                      width: 250,
                                      height: 250,
                                        myData[index].imageUrl,
                                      fit: BoxFit.contain,
                                    ),
                                Text(
                                  myData[index].title,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  myData[index].subtitle,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black45
                                  ),
                                  textAlign: TextAlign.center,
                                )
                              ],
                            );
                          },
                      onPageChanged: (index){
                            setState(() {
                              currentIndex=index;
                            });
                      },),
                    ),
                    Center(
                      child: RectangleIndicator(index: currentIndex),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                          primary: Colors.teal,
                          fixedSize: Size(double.infinity, 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don/'t have an account?"),
                        TextButton(onPressed: (){},
                            child: Text('Sign up',style: TextStyle(color: Colors.teal),))

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
