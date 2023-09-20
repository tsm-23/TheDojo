import 'package:flutter/material.dart';
import 'package:the_dojo/models/heiya.dart';

class Shop extends ChangeNotifier{

   final List<Heiya> _heiyas = [
    //Skating classes
    Heiya(
        name: "Pro Skater",
        department: "Sports",
        sensei: "Naija Huston",
        imagePath: 'lib/images/Skaters.jpg',
        rating: "5.0"),

    //Piano
    Heiya(
        name: "Piano",
        department: "Music",
        sensei: "Ray Charles",
        imagePath: 'lib/images/Piano.jpg',
        rating: "5.0"),

    //Painting
    Heiya(
        name: "Painting",
        department: "Arts",
        sensei: "Pablo Picasso",
        imagePath: 'lib/images/Painting.png',
        rating: "5.0",
        ),   
  ];

List<Heiya> _cart = [];

// ignore: non_constant_identifier_names
List<Heiya> get heiyas => _heiyas;
List<Heiya> get cart => _cart;

void addToCart(Heiya item, int quantity){
  for(int i =0; i<quantity; i++){
    _cart.add(item);
  }
  notifyListeners();
}
void removeFromCart(Heiya item1){
  _cart.remove(item1);
  notifyListeners();
}
 
 }