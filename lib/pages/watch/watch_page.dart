import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class WatchPage extends StatelessWidget {

  List<String> productName = [
    'The Tag Heuer Connoisseur',
    'The Casio Whiz',
    'The Fossil Trendsetter',
    'The Tommy Hilfiger Stylist',
    'The Rolex Sauvant',
    'The Apple Functionalist'
  ];

  List<String> productAmount = [
    'Amount:(INR)',
    'Amount:(INR)',
    'Amount:(INR)',
    'Amount:(INR)',
    'Amount:(INR)',
    'Amount:(INR)'
  ];
  List<int> productPrice = [1000, 400, 1200, 200, 400, 250];

  WatchPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(itemCount: productName.length,
                  itemBuilder: (context, index) {
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
                                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                                    ),
                                    Text(productAmount[index].toString(),
                                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 3.0),
                                    Text(productPrice[index].toString(), style: const TextStyle(fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(height: 4.0),
                                    Container(
                                        child: Center(
                                            child: IconButton(icon: const Icon(
                                                Icons.add_shopping_cart),
                                              onPressed: () => {},
                                              color: Colors.purpleAccent,)
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
