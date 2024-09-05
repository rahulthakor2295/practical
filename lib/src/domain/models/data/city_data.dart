class City {
  int? id;
  int? countryId;
  String? countryTitle;
  String? title;
  String? slug;
  String? image;

  City(
      {this.id,
        this.countryId,
        this.countryTitle,
        this.title,
        this.slug,
        this.image});

  City.fromMap(Map<String, dynamic> json) {
    id = json['Id'];
    countryId = json['CountryId'];
    countryTitle = json['CountryTitle'];
    title = json['Title'];
    slug = json['Slug'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['CountryId'] = this.countryId;
    data['CountryTitle'] = this.countryTitle;
    data['Title'] = this.title;
    data['Slug'] = this.slug;
    data['Image'] = this.image;
    return data;
  }
}