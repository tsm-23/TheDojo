import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_dojo/components/button.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 37, 9),
      body:Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height:25),
            Text("THE DOJO", 
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 28,
              color: Colors.white) ,
            ),
            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/DojoLogo.png'),
            ),

            const SizedBox(height: 10),
            Text("Hardwork, Talent and Skill meets Fun",
            style: GoogleFonts.dmSerifDisplay(
                      fontSize: 44, 
                      color: Colors.white
                      ),
                      ),

            const SizedBox(height: 10),
            Text("Begin your journey to Mastery young Grashopper",
            style: TextStyle(color: Colors.grey[200],
            height: 2),
            ),

            const SizedBox(height: 10),
            MyButton(
              text: "Get Started",
              onTap: (){
                Navigator.pushNamed(context, '/regPage');
              },
            ),
          ],
          ),
      )
    );
  }
}