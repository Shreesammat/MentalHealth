import 'package:flutter/material.dart';

class Emoticon extends StatelessWidget {
  const Emoticon({super.key, required this.emoji,required this.emotion});

  final String emoji,emotion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
          child: Text(emoji, style: const TextStyle(fontSize: 20)),
        ),
        const SizedBox(height: 8,),
        Text(
          style:TextStyle(
            color:Colors.blue[200],
            fontSize:14,
          ),
          emotion),
      ],
    );
  }
}
