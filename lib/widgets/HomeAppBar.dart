import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(22),
      child: Row(
        children: [
          Icon(Icons.sort, size: 30, color: Colors.red),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Ghina Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          Spacer(),
          Badge(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.all(3),
            label: Text("3", style: TextStyle(color: Colors.white)),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "CartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
