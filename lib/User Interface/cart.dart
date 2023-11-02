import 'package:app/constants/constants.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView.builder(
            itemCount: Constants.cartList.length,
            itemBuilder: (context, index) {
              return myCartItem(index, context);
            }),
      ),
    );
  }
}

myCartItem(index, context) {
  return SizedBox(
    height: 30,
    width: double.infinity,
    child: ListTile(
      leading: Image(
        image: NetworkImage(
          Constants.cartList[index].image,
        ),
        fit: BoxFit.fill,
      ),
      title: Text(Constants.cartList[index].name),
      subtitle: Text(Constants.cartList[index].brand),
      trailing: Text(Constants.cartList[index].price),
    ),
  );
}
