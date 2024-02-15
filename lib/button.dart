import 'package:flutter/material.dart';
class button extends StatelessWidget {
  final String Title;
  final Color COLOR;
  final VoidCallback onPress;
  const button({super.key,required this.Title, this.COLOR = const Color(0xffa5a5a5),required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            child: Center(child: Text(Title, style: TextStyle(fontSize: 20 ),)),
            decoration: BoxDecoration(

              shape: BoxShape.circle,
              color: COLOR,

            ),

          ),
        ),
      ),
    );
  }
}


