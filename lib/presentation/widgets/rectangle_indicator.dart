import 'package:flutter/material.dart';

class RectangleIndicator extends StatelessWidget {

  final int index ;
  const RectangleIndicator({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(index==0?Colors.amber:Colors.black12),
        buildContainer(index==1?Colors.amber:Colors.black12),
        buildContainer(index==2?Colors.amber:Colors.black12),

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
