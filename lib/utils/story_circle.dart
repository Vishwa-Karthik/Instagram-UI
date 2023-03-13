import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({super.key,required this.title, required this.iconData});
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* story circle
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade800,
            ),
            height: 70,
            width: 70,
            child: Center(child: Icon(iconData),),
          ),
        ),

        //* story title
        Text(title),
      ],
    );
  }
}
