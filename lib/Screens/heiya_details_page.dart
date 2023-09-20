import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:the_dojo/components/button.dart';
import 'package:the_dojo/models/heiya.dart';
import 'package:the_dojo/themes/colors.dart';

import '../models/shop.dart';

class HeiyaDetailsPage extends StatefulWidget {

  final Heiya heiya;
  const HeiyaDetailsPage({super.key, required this.heiya});

  @override
  State<HeiyaDetailsPage> createState() => _HeiyaDetailsPageState();
}

class _HeiyaDetailsPageState extends State<HeiyaDetailsPage> {

int valueCount = 0;
  void addToCart() {
    if (valueCount >0){ 
    final shop = context.read<Shop>();

    shop.addToCart(widget.heiya, valueCount);

    showDialog(
  
      context: context,
      barrierDismissible: false,
     builder: (context)=> AlertDialog(
      backgroundColor: contr3,
      content: Text("Successfully Added To Cart",
      style: TextStyle(color: contr2),
      textAlign: TextAlign.center,),
      actions: [
        IconButton(onPressed: (){

          Navigator.pop(context);

          Navigator.pop(context);
        },
        icon: const Icon(Icons.done, 
        color: Colors.black, ),
        )
      ],
     ),
     );
    }
  }
  
  void decreaseValue() {
    setState(() {
      if(valueCount > 0){
      valueCount--;
      }
    });
  }
  void increaseValue(){
    setState(() {
      valueCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: contr2,
      ),
      body: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: ListView(
            children: [
              Image.asset(
                widget.heiya.imagePath,
                height: 200,
              ),
              
              const SizedBox(height: 25),
             
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: contr2,
                  ),
                  const SizedBox(width: 25),
          
                  Text(widget.heiya.rating, 
                  style: TextStyle(color: contr3),
                  )
                ],
              ),

              const SizedBox(height: 10),
              
              Text(widget.heiya.name,
              style: GoogleFonts.dmSerifDisplay(fontSize:28 ),
              ),
              Text("Description", 
              style: TextStyle(
                color: contr3,
                fontWeight: FontWeight.bold,
                fontSize: 18),
                ),

                const SizedBox(height: 10),
                Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis, Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis",
                style: TextStyle(
                  color: contr3,
                  fontSize: 14,
                  height: 2,
                ),
                ),
            ],
            ),
          ),
          ),

          Container(
            color: contr3,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$25",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: contr1,
                            shape: BoxShape.circle),
                          child: IconButton(
                            icon:Icon(Icons.remove),
                            color: contr2,
                            onPressed: decreaseValue, ),
                        ),

                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(valueCount.toString(),
                             style: TextStyle(
                              color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                            ),
                            ),
                          ),
                        ),
                        Container(
                        decoration: BoxDecoration(
                            color: contr1, 
                            shape: BoxShape.circle),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          color: contr2,
                          onPressed: increaseValue,
                        ),
                      )
                      ],
                    ),
                  ],
                ),
                
                const SizedBox(height: 25),

                MyButton(text: "Add To Cart", onTap: addToCart),


              ],
            ),
          ),

      ]),
    );
  }

  

  
}