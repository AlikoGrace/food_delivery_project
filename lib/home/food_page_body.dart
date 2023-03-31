import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  //the default is 1. this ensures not only one widget covers the whole
  //screen in the builder
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      //container should always have a height
      height: 300,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          height: 200,
          decoration: BoxDecoration(
            color: index.isEven ? Color(0xFF89dad0) : Color(0xFFffd28d),
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/pictures/pic1.jpg'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
