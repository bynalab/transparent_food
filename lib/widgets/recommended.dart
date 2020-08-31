import 'package:flutter/material.dart';
import 'package:foodie_transparent/classes/foods.dart';

class Recommended extends StatelessWidget {
  Foods food;
  Recommended(this.food);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      elevation: 16,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(food.imageLink),
            ),
          ),
          SizedBox(height: 10),
          Text(food.name,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
          SizedBox(height: 3),
          Text(food.subName,
              style: TextStyle(color: Colors.black45, fontSize: 10)),
          SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '\$${food.amount}',
                    style: TextStyle(fontSize: 12),
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SlideDishes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Icon(
                Icons.restaurant_menu,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            color: Colors.orange,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Icon(
                Icons.local_pizza,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Icon(
                Icons.restaurant,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: Icon(
                Icons.fastfood,
              ),
            ),
          ),
        )
      ],
    );
  }
}
