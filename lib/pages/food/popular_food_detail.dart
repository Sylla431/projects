import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/Dimension.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expanded_text_widget.dart';

import '../../widgets/app_icon.dart';


class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //food background image
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimension.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/image/food0.png"
                    )
                  )
                ),
          )),
          //back icon and shopping_cart icon part
          Positioned(
            top: Dimension.height45,
            left: Dimension.width20,
              right: Dimension.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined)
                ],
          )),
          //food introduction
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: Dimension.popularFoodImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimension.width20, right: Dimension.width20, top: Dimension.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimension.radius20),
                    topLeft: Radius.circular(Dimension.radius20)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Macaroni",),
                    SizedBox(height: Dimension.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimension.height20,),
                    Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Lorem ipsum dolor sit amet. Eum sunt magni rem porro corrupti et nulla quidem. Quo obcaecati tempore et quidem fugit non corporis voluptatem qui voluptas sunt cum ipsam praesentium id omnis magnam ut quos Quis. Ut placeat veritatis quo culpa culpa in perspiciatis incidunt est possimus voluptas rem quia harum et ratione architecto! Ad quia totam qui quis corrupti non adipisci molestiae et ipsa repellat quo aliquid neque. Sed animi ipsum et iusto soluta At saepe nihil ut deserunt ducimus. Ex quisquam ipsum et quia dolorem a totam fuga. Aut ullam quaerat et nemo deserunt qui minima vitae eum minus necessitatibus est laudantium voluptates. Ut alias facere et delectus magnam et  eligendi rem provident facilis a expedita facere! Aut odit sint ab voluptatem dolorem vel ducimus dignissimos id quas necessitatibus qui expedita repudiandae et libero ratione non vitae voluptates. Ex velit praesentium aut voluptatem ducimus ut quia galisum et exercitationem deleniti et illum sequi At animi voluptas. Quo Quis doloremque et doloribus unde id ullam exercitationem ut earum dolore! Rem doloremque quia aut quia saepe qui molestiae error quo voluptatum minus non autem eius aut consequatur dolorem.")))

                  ],
                ),
          )),
          // Expandable text widget

        ],
      ),
      bottomNavigationBar: Container(
        height: Dimension.popularFoodDetailBottomBar,
        padding: EdgeInsets.only(top: Dimension.height30, bottom: Dimension.height30, left: Dimension.height20, right: Dimension.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimension.radius20*2),
            topRight: Radius.circular(Dimension.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: Dimension.width20, right: Dimension.width20, top: Dimension.height20, bottom: Dimension.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimension.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimension.width10/2,),
                  Icon(Icons.add, color: AppColors.signColor,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: Dimension.width20, right: Dimension.width20, top: Dimension.height20, bottom: Dimension.height20),
              child: BigText(text: "\$10 | Add to card", color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color: AppColors.mainColor,

              ),
            )
          ],
        ),
      ),
    );
  }
}
