class CategoryResponsedata {
  int? id;
  String? title;
  String? slug;
  String? content;
  String? image;
  String? hidImage;
  String? icon;
  String? hidIcon;
  int? status;
  String? entDt;

  CategoryResponsedata(
      {this.id,
        this.title,
        this.slug,
        this.content,
        this.image,
        this.hidImage,
        this.icon,
        this.hidIcon,
        this.status,
        this.entDt});

  CategoryResponsedata.fromMap(Map<String, dynamic> json) {
    id = json['Id'];
    title = json['Title'];
    slug = json['Slug'];
    content = json['Content'];
    image = json['Image'];
    hidImage = json['Hid_Image'];
    icon = json['Icon'];
    hidIcon = json['Hid_Icon'];
    status = json['Status'];
    entDt = json['EntDt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Title'] = this.title;
    data['Slug'] = this.slug;
    data['Content'] = this.content;
    data['Image'] = this.image;
    data['Hid_Image'] = this.hidImage;
    data['Icon'] = this.icon;
    data['Hid_Icon'] = this.hidIcon;
    data['Status'] = this.status;
    data['EntDt'] = this.entDt;
    return data;
  }
}