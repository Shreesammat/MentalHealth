import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color:Colors.blue[100],
        
        borderRadius: BorderRadius.circular(16),
      ),
      child: const ListTile(
        leading: Icon(Icons.favorite,size:30,color:Colors.white),
      ),
    );
  }
}
