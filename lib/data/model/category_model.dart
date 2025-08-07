class CategoryModel {
  String? status;
  String? message;
  List<String>? categories;

  CategoryModel({this.status, this.message, this.categories});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    categories = json['categories'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['categories'] = this.categories;
    return data;
  }
}
