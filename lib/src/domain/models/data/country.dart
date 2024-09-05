
class Country {
  int? id;
  String? title;
  String? slug;
  String? image;

  Country({this.id, this.title, this.slug, this.image});

  Country.fromMap(Map<String, dynamic> json) {
    id = json['Id'];
    title = json['Title'];
    slug = json['Slug'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Title'] = this.title;
    data['Slug'] = this.slug;
    data['Image'] = this.image;
    return data;
  }
}
