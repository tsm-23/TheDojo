import 'package:flutter/material.dart';
import 'package:the_dojo/themes/colors.dart';

const String baseURL = "http://127.0.0.1:8000/api/";
const Map<String, String>headers ={"Content-Type":"application/json"};

 errorSnackBar(BuildContext context, String text){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
    backgroundColor: contr2, 
    duration: const Duration(seconds: 1),
    content: Text(text)
    )
    );
 }
