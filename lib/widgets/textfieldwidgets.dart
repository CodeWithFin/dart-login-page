import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController textController = TextEditingController();
  String? labelText;
   CustomTextField({required this.textController,required this.labelText,super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
          controller:textController,
         decoration: InputDecoration(
          labelText: labelText,
         ), 
        );
  }
}