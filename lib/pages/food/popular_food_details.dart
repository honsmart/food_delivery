import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimentions.dart';
import 'package:food_delivery/widgets/app_column.dart';

import '../../utils/colors.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandable_text_widget.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
              width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: const BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage(
                       "assets/image/shawarma.png"
                   )
                     ,)
                ),
          )),
          //Icon widget
          Positioned(
              top: Dimensions.height45 ,
              left: Dimensions.width20,
              right: Dimensions.width20 ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   AppIcon(icon: Icons.arrow_back_ios,),
                   AppIcon(icon: Icons.shopping_bag_outlined,)
                 ],
              ),),
          //Introduction of the food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize -20 ,
              child: Container(
               padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.width20),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(Dimensions.radius20),
                   topRight: Radius.circular(Dimensions.radius20)
                 ),
                 color: Colors.white
               ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppColumn(text: "Chicken Shawarma",),
                    SizedBox(height: Dimensions.height20,),
                    BigText(text: "Introduce"),
                    SizedBox(height: Dimensions.height20,), 
                    //Expandable text widget
                     const Expanded(child:
                     SingleChildScrollView(
                         child: ExpandableTextWidget(
                           text:
                           'Chicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated in a mixture of yogurt, lemon juice, garlic, and a blend of Middle Eastern spices such as cumin, coriander, and paprika. The marinated chicken is then placed on a spit, or a long metal skewer, and cooked over an open flame or grill. As the chicken rotates on the spit, it is basted with the marinade, which helps to keep it moist and flavorful. The meat is cooked until it is tender and juicy, and is then shaved off the spit and placed into a pita bread or wrap with vegetables, such as lettuce, tomatoes, onions, and cucumbers, and a sauce, such as tahini or garlic sauce.',)))
                  ],
                )
          )),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, right: Dimensions.width20, left: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, right: Dimensions.width20, left: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: Dimensions.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10/2,),
                  Icon(Icons.add, color: AppColors.signColor,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, right: Dimensions.width20, left: Dimensions.width20),
              child: BigText(text: "\$10 | Add to cart", color: Colors.white ,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20 ),
                color: AppColors.mainColor
              ),
            )
          ],
        ),
      ),
    );
  }
}
