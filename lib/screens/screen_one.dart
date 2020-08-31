import 'package:flutter/material.dart';
import 'package:foodie_transparent/classes/food_list.dart';
import 'package:foodie_transparent/classes/foods.dart';
import 'package:foodie_transparent/components/bottom_nav.dart';
import 'package:foodie_transparent/widgets/recommended.dart';

FoodList foodList = FoodList();

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigation(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Opacity(
                opacity: 0.3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg_dp.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Hi Abdusalam!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          Spacer(),
                          Spacer(),
                          Expanded(
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                child:
                                    Image.asset('assets/images/bynalab_dp.jpg'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'What do you want for dinner ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SlideDishes(),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Recommended',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //Card
                    Container(
                      height: 500,
                      width: 400,
                      child: GridView.builder(
                        itemCount: foodList.foods.length,
                        itemBuilder: (context, index) {
                          return Recommended(foodList.foods[index]);
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
