import 'package:flutter/material.dart';
import 'package:food_delivery_project/app_styles.dart';
import 'package:food_delivery_project/widgets/big_text.dart';
import 'package:food_delivery_project/widgets/small_text.dart';
import 'package:food_delivery_project/widgets/icon_and_text_widget.dart';

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
      //container should always have a height
      height: 200,
      //original is 300
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
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 220,
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
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
                padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: 'Chinese Dish'),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: kMainColor,
                                  )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: '4.5'),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: '185'),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: 'comments'),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        IconTextWidget(
                            icon: Icons.circle_sharp,
                            iconColor: kIconColor1,
                            text: 'Normal'),
                        IconTextWidget(
                            icon: Icons.location_on,
                            iconColor: kMainColor,
                            text: '1.72km'),
                        IconTextWidget(
                            icon: Icons.access_time_filled_rounded,
                            iconColor: kIconColor2,
                            text: '32min')
                      ],
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
