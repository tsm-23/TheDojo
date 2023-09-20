import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_dojo/models/heiya.dart';
import 'package:the_dojo/themes/colors.dart';

class HeiyaTile extends StatelessWidget {
  final Heiya heiya;
  final void Function()? onTap;
  
  const HeiyaTile({
    super.key,
    required this.heiya,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: contr2,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(left: 25.0),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              heiya.imagePath,
              height: 140,
              ),
              
              Text(
                heiya.name,
                style: GoogleFonts.dmSerifDisplay(fontSize: 20),
              ),
    
              SizedBox(
                width: 160,
                child: Row(
                  children: [
                    Text(
                      heiya.department
                      ),
                  ],
                ),
              ),
              SizedBox(
                width: 160,
                child: Row(
                  children: [
                    Text(heiya.sensei),
                  ],
                ),
              ),
              SizedBox(
                width: 160,
                child: Row(
              children: [
                Text(heiya.rating),
                Icon(
                  Icons.star,
                  color: Colors.black,
                ),
              ],
            ),
              )
    
          ]
          ),
      ),
    );
  }
}