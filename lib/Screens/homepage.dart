// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:the_dojo/Screens/heiya_details_page.dart';
import 'package:the_dojo/components/button.dart';
import 'package:the_dojo/components/heiya_tile.dart';
import 'package:the_dojo/models/shop.dart';
import 'package:the_dojo/themes/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 


  void navigateToClassDetails(int index){
    final shop = context.read<Shop>();
    final heiyas =shop.heiyas;
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HeiyaDetailsPage(
      heiya: heiyas[index],
    ),
    
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final heiyas = shop.heiyas;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 37, 9
      ) ,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color:  Color.fromARGB(255, 255, 200, 87),
          ),
          title: const Text("The Dojo", 
          style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(onPressed: () {
              Navigator.pushNamed(context, '/cartpage');
            },
             icon: const Icon(Icons.shopping_cart_rounded,
             color: Color.fromARGB(255, 255, 200, 87),
             ),
              )
          ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //banner
          Container(
            decoration: BoxDecoration(color: contr2),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Get 10% Off", style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                    const SizedBox(height: 20,),
                    MyButton(text: "Redeem", onTap: (){},
                    ),
                  ],
                ),
              Image.asset('lib/images/pavilion.png',
              height: 100,)
              ],
            ),
          ), 
          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: contr1),
                      borderRadius: BorderRadius.circular(20)
                      ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: contr1),
                borderRadius: BorderRadius.circular(20),
                
                
              ),
              hintText: "Search for Class",
            ),
          )
          ),

          const SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Classes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: contr1,
                fontSize: 18,
              ),
              ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: heiyas.length,
              itemBuilder: (context, index) => HeiyaTile(
                heiya: heiyas[index],
                onTap: () => navigateToClassDetails(index),
              ),
            ),
            ),

            const SizedBox(height: 25),
        ],
      ),
    );
  }
}