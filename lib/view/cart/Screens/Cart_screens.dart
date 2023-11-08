
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../utils/ListConst.dart';
import '../Widgets/Cart_product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final String items="2 items";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart"),elevation: 0,),
      body: SingleChildScrollView(
        scrollDirection:  Axis.vertical,
        child: Column(
          children: [
            Text("Subtotal:Nrs.502000",style: TextStyle(fontSize: 20.h),).box.alignBottomLeft.make(),
            20.h.heightBox,
            ElevatedButton(onPressed: (){},style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)), child: Text( "Proceed to Buy($items)", style: TextStyle(fontSize: 20.h),),).box.rounded.size(400.h, 50.h).make(),
            20.h.heightBox,
            Container(
              color: Colors.black12.withOpacity(0.08),
              height: 1.h,
            ),
            10.h.heightBox,
            ListView.builder(itemCount: featureproductname.length,shrinkWrap: true,itemBuilder: (context, index) {
              return CartProduct(index: index);

            },)
          ],
        ),
      ),
    );
  }
}
