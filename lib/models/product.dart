class Product {
  String name = "";
  String desc = "";
  String brand = "";
  String price = "";
  String image = "";
  String rating = "";

  Product(String name, String desc, String brand, String price, String image,
      String rating) {
    // ignore: prefer_initializing_formals
    this.name = name;
    // ignore: prefer_initializing_formals
    this.desc = desc;
    // ignore: prefer_initializing_formals
    this.price = price;
    // ignore: prefer_initializing_formals
    this.brand = brand;
    // ignore: prefer_initializing_formals
    this.image = image;
    // ignore: prefer_initializing_formals
    this.rating = rating;
  }

}