
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/Dimension.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expanded_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight:300,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),

              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size: Dimension.font26, text: "Chinese Side"),),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimension.radius20),
                    topLeft: Radius.circular(Dimension.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text:"Lorem ipsum dolor sit amet. Eum sunt magni rem porro corrupti et nulla quidem. Quo obcaecati tempore et quidem fugit non corporis voluptatem qui voluptas sunt cum ipsam praesentium id omnis magnam ut quos Quis. Ut placeat veritatis quo culpa culpa in perspiciatis incidunt est possimus voluptas rem quia harum et ratione architecto! Ad quia totam qui quis corrupti non adipisci molestiae et ipsa repellat quo aliquid neque. Sed animi ipsum et iusto soluta At saepe nihil ut deserunt ducimus. Ex quisquam ipsum et quia dolorem a totam fuga. Aut ullam quaerat et nemo deserunt qui minima vitae eum minus necessitatibus est laudantium voluptates. Ut alias facere et delectus magnam et  eligendi rem provident facilis a expedita facere! Aut odit sint ab voluptatem dolorem vel ducimus dignissimos id quas necessitatibus qui expedita repudiandae et libero ratione non vitae voluptates. Ex velit praesentium aut voluptatem ducimus ut quia galisum et exercitationem deleniti et illum sequi At animi voluptas. Quo Quis doloremque et doloribus unde id ullam exercitationem ut earum dolore! Rem doloremque quia aut quia saepe qui molestiae error quo voluptatum minus non autem eius aut consequatur doloremLorem ipsum dolor sit amet. Eum sunt magni rem porro corrupti et nulla quidem. Quo obcaecati tempore et quidem fugit non corporis voluptatem qui voluptas sunt cum ipsam praesentium id omnis magnam ut quos Quis. Ut placeat veritatis quo culpa culpa in perspiciatis incidunt est possimus voluptas rem quia harum et ratione architecto! Ad quia totam qui quis corrupti non adipisci molestiae et ipsa repellat quo aliquid neque. Sed animi ipsum et iusto soluta At saepe nihil ut deserunt ducimus. Ex quisquam ipsum et quia dolorem a totam fuga. Aut ullam quaerat et nemo deserunt qui minima vitae eum minus necessitatibus est laudantium voluptates. Ut alias facere et delectus magnam et  eligendi rem provident facilis a expedita facere! Aut odit sint ab voluptatem dolorem vel ducimus dignissimos id quas necessitatibus qui expedita repudiandae et libero ratione non vitae voluptates. Ex velit praesentium aut voluptatem ducimus ut quia galisum et exercitationem deleniti et illum sequi At animi voluptas. Quo Quis doloremque et doloribus unde id ullam exercitationem ut earum dolore! Rem doloremque quia aut quia saepe qui molestiae error quo voluptatum minus non autem eius aut consequatur dolorem.."),
                  margin: EdgeInsets.only(left: Dimension.width20, right: Dimension.width20),
                  ),

              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimension.width20*2.5,
              right: Dimension.width20*2.5,
              top: Dimension.height10,
              bottom: Dimension.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(iconSize: Dimension.iconSize24, iconColor: Colors.white ,backgroundColor: AppColors.mainColor ,icon: Icons.remove),
                BigText(text: "\$12.88 "+" X "+" 0 ", size: Dimension.font26, color: AppColors.mainBlackColor,),
                AppIcon(iconSize: Dimension.iconSize24, iconColor: Colors.white ,backgroundColor: AppColors.mainColor ,icon: Icons.add),

              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  )
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
        ],
      ),
    );
  }
}
