// ignore_for_file: prefer_const_constructors

import 'package:app/User%20Interface/cart.dart';
import 'package:app/constants/constants.dart';
import 'package:app/models/product.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductDetailsView extends StatelessWidget {
  Product product;
  ProductDetailsView(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 2),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Product Details",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 27,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(product.image))),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Rating: ${product.rating}",
                        style: const TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 255, 219, 59)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Description",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        product.desc,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.price,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.black),
                          ),
                          SizedBox(
                              height: 30,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: const StadiumBorder(),
                                      backgroundColor: Colors.black),
                                  onPressed: () {
                                    Constants.cartList.add(product);
                                  },
                                  child: Center(
                                      child: const Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  ))))
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CartView()));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor: Colors.black),
                            child: const Center(
                              child: Text(
                                "Visit Your Cart",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
