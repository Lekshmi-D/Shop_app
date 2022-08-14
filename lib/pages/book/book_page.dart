import 'package:flutter/material.dart';
import 'package:listapp/pages/cartscreen/cart.dart';
//import 'package:badges/badges.dart';

// ignore: must_be_immutable
class BookPage extends StatelessWidget {
  //const BookPage({Key? key}) : super(key: key);
  List<String> productName = ['The diary of a Wimpy kid (set)' , 'Wings of fire by Kalam' , 'Harry Potter Series' , 'Ikigai','A thousand Splendid Suns','The Silent Patient'] ;
  List<String> productAmount = ['Amount:(INR)','Amount:(INR)','Amount:(INR)','Amount:(INR)','Amount:(INR)','Amount:(INR)'];
  List<int> productPrice = [1000, 400 , 1200, 200, 400, 250] ;

  BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(itemCount: productName.length,
                  itemBuilder: ( context , index){
                return Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          //Image(
                            //height: 10,
                              //width: 10,
                              //image: AssetImage(productImage.toString()),
                          //),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productName[index].toString(),
                                style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                              ),
                              Text(productAmount[index].toString(),
                                style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(height: 3.0),
                              Text(productPrice[index].toString(),
                                style: const TextStyle(fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(height: 4.0),
                              Container(
                                child: Center(
                                  child: IconButton(icon: const Icon(Icons.add_shopping_cart),onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => Cart_page()))},color: Colors.purpleAccent,)
                                )
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )
                );
                  }
          )
            ),

        ],
      ),
      );
}
  }