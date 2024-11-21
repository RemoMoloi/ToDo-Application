import 'package:flutter/material.dart';
import 'package:todo_application/utils/my_buttons.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox({super.key, 
   required this.controller,
   required this.onSave,
   required this.onCancel
   });

  @override
  Widget build(BuildContext context) {
    //TextEditingController taskController
    return AlertDialog(
      backgroundColor: Colors.green[400],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task"
                ), 
            ),

            //buttons 
            Row(
              children: [
                //save button
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 55,),
                //cancel button
                MyButton(text: "Cancel", onPressed: onCancel,)
              ],
            )
          ],
        ),
      ),
    );
  }
}