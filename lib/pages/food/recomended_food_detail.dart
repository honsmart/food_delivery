import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimentions.dart';

import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandable_text_widget.dart';

class RecomendedFoodDetail extends StatelessWidget {
  const RecomendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
           body: CustomScrollView(
             slivers: [
               SliverAppBar(
                 toolbarHeight: 70,
                 title: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                   children: [
                     AppIcon(icon: Icons.clear),
                     AppIcon(icon: Icons.shopping_cart_outlined),
                   ],
                 ),
                 bottom: PreferredSize(
                     preferredSize: Size.fromHeight(20),
                     child:Container(
                       child: Center( child: BigText(size: Dimensions.font26,text: "Spaggetti",)),
                       width: double.maxFinite,
                       padding: EdgeInsets.only(top: 5, bottom: 10),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(Dimensions.radius20),
                           topRight: Radius.circular(Dimensions.radius20),
                         ),
                       ),
                     )

                 ),
                 pinned: true,
                 backgroundColor: AppColors.mainColor,
                 expandedHeight: 300,
                 flexibleSpace: FlexibleSpaceBar(
                   background: Image.asset(
                       "assets/image/pasta.png",
                       width: double.maxFinite,
                       fit: BoxFit.cover ,
                   ),

                 ),
               ),
               SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                      child: ExpandableTextWidget(text: 'Chicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated in a mixture Chicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated inChicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated inChicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated inChicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated inChicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated inChicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated inChicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated inChicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated inChicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated inChicken shawarma is a popular Middle Eastern dish that consists of thin slices of marinated chicken that are grilled on a spit and served in a pita bread or wrap. The chicken is typically marinated in of yogurt, lemon juice, garlic, and a blend of Middle Eastern spices such as cumin, coriander, and paprika. The marinated chicken is then placed on a spit, or a long metal skewer, and cooked over an open flame or grill. As the chicken rotates on the spit, it is basted with the marinade, which helps to keep it moist and flavorful. The meat is cooked until it is tender and juicy, and is then shaved off the spit and placed into a pita bread or wrap with vegetables, such as lettuce, tomatoes, onions, and cucumbers, and a sauce, such as tahini or garlic sauce.')
                    )
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
                   left: Dimensions.width20*2.5,
                     right: Dimensions.width20*2.5,
                     top: Dimensions.height10,
                     bottom: Dimensions.height10
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     AppIcon(iconSize: Dimensions.iconSize24,iconColor: Colors.white,backgroundColor: AppColors.mainColor,icon: Icons.remove),
                     BigText(text: "\$12.88 " + " X "  + " 0 ", color: AppColors.mainBlackColor,size: Dimensions.font26,),
                     AppIcon(iconSize: Dimensions.iconSize24,iconColor: Colors.white,backgroundColor: AppColors.mainColor,icon: Icons.add)
                   ],
                 ),
               ),
               Container(
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
                       child: Icon(Icons.favorite, color: AppColors.mainColor,)
                     ),
                     Container(
                       padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, right: Dimensions.width20, left: Dimensions.width20),
                       child: BigText(text: "\$28 | Add to cart", color: Colors.white ,),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(Dimensions.radius20 ),
                           color: AppColors.mainColor
                       ),
                     )
                   ],
                 ),
               )
             ],
           ),
    );
  }
}
