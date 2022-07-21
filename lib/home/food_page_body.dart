
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/Dimension.dart';
import 'package:food_delivery/utils/Dimension.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue=0.0;
  double _scaleFactor=0.8;
  double _height=Dimension.pageViewContainer;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState((){
        _currentPageValue=pageController.page!;
        });
    });
  }
  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // buildind left right scroll food part
          height: Dimension.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position){
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
    )
      ],
    );
  }
  Widget _buildPageItem(int index){
//Make zooming in and zooming out slide
    Matrix4 matrix=new Matrix4.identity();
    if(index==_currentPageValue.floor()){
      var currSCale = 1-(_currentPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currSCale)/2;
      matrix=Matrix4.diagonal3Values(1, currSCale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index == _currentPageValue.floor()+1){
      var currScale = _scaleFactor+(_currentPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1);
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else if(index == _currentPageValue.floor()-1){
      var currSCale = 1-(_currentPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currSCale)/2;
      matrix=Matrix4.diagonal3Values(1, currSCale, 1);
      matrix=Matrix4.diagonal3Values(1, currSCale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale=0.8;
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);

    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimension.pageViewContainer,
            margin: EdgeInsets.only(left: Dimension.width10, right: Dimension.width10),
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(Dimension.radius30),
                color: AppColors.mainColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/image/food0.png"
                    )
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimension.pageViewTextContainer,
              margin: EdgeInsets.only(left: Dimension.width30, right: Dimension.width30, bottom: 30),
              decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(Dimension.radius20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                    color: Color(0xFFe6e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5)
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0)
                    ),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(5, 0)
                    ),
                  ]

              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimension.height15, left: Dimension.width15, right: Dimension.width15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text:"Chinese side"),
                    SizedBox(height: Dimension.height10,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size:15)),
                        ),
                        SizedBox(width: 10,),
                        SmallText(text: "4.50"),
                        SizedBox(width: 15),
                        SmallText(text: "1790"),
                        SizedBox(width: 5,),
                        SmallText(text: "comments")
                      ],
                    ),
                    SizedBox(height: Dimension.height20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidget(icon: Icons.circle_sharp,
                            text: "Normal",
                            iconColor: AppColors.iconColor1),
                        IconAndTextWidget(icon: Icons.location_on,
                            text: "1.7km",
                            iconColor: AppColors.mainColor),
                        IconAndTextWidget(icon: Icons.access_time_rounded,
                            text: "32min",
                            iconColor: AppColors.iconColor2)
                      ],
                    )
                  ],
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}
