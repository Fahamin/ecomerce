class DataModel {
  String? name;
  String? link;

  // Constructor
  DataModel({
    this.name,
    this.link,
  });

  // From Map constructor
  DataModel.fromMap(String key, dynamic value) {
    // Assuming `value` is a Map with "name" and "link" fields
    Map<String, dynamic> myData = Map<String, dynamic>.from(value);

    name = myData["name"]?.toString(); // Safe extraction
    link = myData["link"]?.toString(); // Safe extraction
  }

  // toJson method to convert DataModel to a Map
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "link": link,
    };
  }
}