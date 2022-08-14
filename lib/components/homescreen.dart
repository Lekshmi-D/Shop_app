import 'package:flutter/material.dart';
import 'package:listapp/components/home_categories.dart';
import 'package:listapp/pages/book/book_page.dart';
import 'package:listapp/pages/book/bookpage.dart';
import 'package:listapp/pages/electronics/electronicspage.dart';
import 'package:listapp/pages/grocery/grocery_page.dart';
import 'package:listapp/pages/grocery/grocerypage.dart';
import 'package:listapp/pages/watch/watch_page.dart';
import 'package:listapp/pages/electronics/electronics_page.dart';
import 'package:listapp/pages/cartscreen/cart.dart';

import '../pages/watch/watchpage.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    //int selectedItem=0;
    return Container(

      height: 600,
      child: ListView(
        scrollDirection: Axis.vertical,
        itemExtent: 250,
       children: [

         HomeCategories(
         IconButton(icon: const Icon(Icons.book),iconSize: 100,color: Colors.deepPurple,onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => const Book_page()))}),
         'Book'),
         HomeCategories(
           IconButton(icon: const Icon(Icons.watch),iconSize: 100,color: Colors.deepPurple,onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => Watch_page()))}),
           'Watch'),
         HomeCategories(
           IconButton(icon: const Icon(Icons.local_grocery_store_sharp),iconSize: 100,color: Colors.deepPurple,onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => Grocery_page()))}),
           'Grocery'),
         HomeCategories(
           IconButton(icon: const Icon(Icons.cable_outlined),iconSize: 100,color: Colors.deepPurple,onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => Electronics_page()))}),
           'Electronics'),

       ],

      ),
    );
  }
}











