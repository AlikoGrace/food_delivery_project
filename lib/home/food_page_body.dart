import 'package:flutter/material.dart';
import 'package:food_delivery_project/app_styles.dart';
import 'package:food_delivery_project/widgets/big_text.dart';
import 'package:food_delivery_project/widgets/small_text.dart';
import 'package:food_delivery_project/widgets/icon_and_text_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  //the default is 1. this ensures not only one widget covers the whole
  //screen in the builder
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  //that's like 80% of it's original size

  //the below function will listen to the pageNumber and assign it _currentPageValue
  //so we can use it
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  //the below will dispose it after using to conserve memory
  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //container should always have a height
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: kMainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
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
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
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
                            width: 20,
                          ),
                          SmallText(text: '4.5'),
                          SizedBox(
                            width: 20,
                            //  actual width is 20
                          ),
                          SmallText(text: '185'),
                          SizedBox(
                            width: 20,
                          ),
                          SmallText(text: 'comments'),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
    );
  }
}
