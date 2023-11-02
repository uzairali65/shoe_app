// ignore: unnecessary_import
// ignore_for_file: avoid_print, prefer_const_constructors
import 'package:app/User%20Interface/productdetails.dart';
import 'package:app/constants/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    var productList = constants.list;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage("assets/style.png")),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Featured Products",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return getFeaturedProductCard(
                            context, productList[index]);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "New Arrivals",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return getFeaturedProductCard(
                            context, productList[index]);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Top Products",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return getFeaturedProductCard(
                            context, productList[index]);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

getFeaturedProductCard(BuildContext context, product) {
  return InkWell(
    onTap: () {
      print(product.name);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => ProductDetailsView(product)));
    },
    child: Card(
      color: Colors.white,
      shadowColor: Colors.grey.shade200,
      elevation: 5.0,
      child: Container(
        height: MediaQuery.of(context).size.width * 0.5,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(product.image), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "${product.name}",
              style: const TextStyle(fontSize: 14),
            ),
            Text(
              "${product.price}",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    ),
  );
}
