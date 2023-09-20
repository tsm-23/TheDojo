

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_dojo/components/button.dart';
import 'package:the_dojo/models/heiya.dart';
import 'package:the_dojo/themes/colors.dart';

import '../models/shop.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  void removeFromCart(Heiya heiya, BuildContext context){
    final shop = context.read<Shop>();

    shop.removeFromCart(heiya);

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
    builder: (context,value, child) => 
    Scaffold(
      backgroundColor: contr3,
        appBar: AppBar(
          title: const Text("My Cart",
          style: TextStyle(
              color: Colors.white,
            ),
          ),
          
          backgroundColor: contr3,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final Heiya heiya = value.cart[index];
            
                  final String heiyaName = heiya.name;
            
                  final String heiyaPrice = "\$25";
            
                  return Container(
                    decoration: BoxDecoration(color: contr1, 
                    borderRadius: BorderRadius.circular(8)),
                    margin: const EdgeInsets.only(left: 20,top: 20,right: 20),
                    child: ListTile(
                      title: Text(heiyaName,
                      style: TextStyle(color: contr3, 
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                      subtitle: Text(heiyaPrice,
                      style: TextStyle(
                          color: contr3,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete,
                        color: contr3,),
                        onPressed: () => removeFromCart(heiya, context),
                        ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(text: "Pay Now", 
              onTap: (){},
              ),
            ),
          ],
        ),
      ),

    );
    
  }
} 