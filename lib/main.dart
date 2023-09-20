import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_dojo/Screens/cart_page.dart';
import 'package:the_dojo/Screens/intro_page.dart';
import 'package:the_dojo/Screens/login_page.dart';
import 'package:the_dojo/Screens/register_page.dart';
import 'package:the_dojo/models/shop.dart';

import 'Screens/homepage.dart';

void main() {
  runApp(
  ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ),
  );
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Dojo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        useMaterial3: true,
      ),
      home: const IntroPage(),
      routes: {
        '/intropage':(context) => const IntroPage(),
        '/homepage':(context) => const HomePage(),
        '/cartpage': (context) => const ChartPage(),
        '/loginPage': (context) => const LoginScreen(),
        '/regPage': (context) => const RegisterScreen(),
        
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

