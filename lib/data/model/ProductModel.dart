class ProductModel {
  String? status;
  String? message;
  Product? product;

  ProductModel({this.status, this.message, this.product});

  ProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    return data;
  }
}

class Product {
  int? id;
  String? title;
  String? image;
  int? price;
  String? description;
  String? brand;
  String? model;
  String? color;
  String? category;
  bool? popular;
  int? discount;

  Product(
      {this.id,
      this.title,
      this.image,
      this.price,
      this.description,
      this.brand,
      this.model,
      this.color,
      this.category,
      this.popular,
      this.discount});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    price = json['price'];
    description = json['description'];
    brand = json['brand'];
    model = json['model'];
    color = json['color'];
    category = json['category'];
    popular = json['popular'];
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['price'] = this.price;
    data['description'] = this.description;
    data['brand'] = this.brand;
    data['model'] = this.model;
    data['color'] = this.color;
    data['category'] = this.category;
    data['popular'] = this.popular;
    data['discount'] = this.discount;
    return data;
  }
}