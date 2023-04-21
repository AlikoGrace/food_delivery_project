import 'package:flutter/material.dart';
import 'package:food_delivery_project/app_styles.dart';
import 'package:food_delivery_project/widgets/big_text.dart';
import 'package:food_delivery_project/widgets/small_text.dart';
import 'food_page_body.dart';
import 'package:food_delivery_project/dimentions.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    print('height is' + MediaQuery.of(context).size.height.toString()!);
    return Scaffold(
      body: Column(
        children: [
          Container(),
          Container(
            margin: EdgeInsets.only(
                top: Dimentions.Height45, bottom: Dimentions.Height15),
            padding: EdgeInsets.only(
                left: Dimentions.width20, right: Dimentions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Country",
                      color: kMainColor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: 'Nepal',
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Container(
                  height: Dimentions.Height45,
                  width: Dimentions.Height45,
                  decoration: BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.circular(Dimentions.raduis15),
                  ),
                  child: Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: Dimentions.iconSize24,
                  ),
                )
              ],
            ),
          ),
          FoodPageBody()
        ],
      ),
    );
  }
}
