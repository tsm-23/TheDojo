import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        decoration: BoxDecoration(color: Color.fromARGB(255,209 , 96, 20),
        borderRadius: BorderRadius.circular(20)),
        
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
            style: TextStyle(color: Color.fromARGB(255, 49, 37, 9)),
            ),
            
            const SizedBox(width: 10),
            Icon(
              Icons.arrow_forward,
              color: Color.fromARGB(255, 49, 37, 9),
            ),
          ],
        ),
      ),
    );
  }
}