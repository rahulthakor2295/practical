class Responsedata {
  int? id;
  String? title;
  String? image;

  Responsedata({this.id, this.title, this.image});

  Responsedata.fromMap(Map<String, dynamic> json) {
    id = json['Id'];
    title = json['Title'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Title'] = this.title;
    data['Image'] = this.image;
    return data;
  }
}