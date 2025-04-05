import 'package:flutter/material.dart';
import 'package:ghina_shop/widgets/CarteItemSamples.dart';

import '../widgets/CartAppBar.dart';
import '../widgets/CartBottomNavBar.dart';

class CartPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFFFE1E4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
                children: [
                  CartItemSamples(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                        ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Add Coupon Code",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar() ,
    ); // <-- this was a comma, now it's a semicolon
  }
}
