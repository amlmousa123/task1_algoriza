import 'package:flutter/material.dart';

class RectangleIndecator extends StatelessWidget {

  final int index ;
  const RectangleIndecator({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(Colors.black12),
        buildContainer(Colors.black12),
        buildContainer(Colors.black12),

      ],
    );
  }

  Container buildContainer(Color color){
    return Container(
      margin: EdgeInsets.all(4),
      width: 15,
      height: 5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
