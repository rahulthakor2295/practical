class Product {
  int? id;
  String? title;
  int? userId;
  int? ezyProductId;
  int? productTypeId;
  String? description;
  String? mrp;
  String? sellingPrice;
  String? sku;
  int? pages;
  int? isPrePrinted;
  int? pdfCustomizeOption;
  int? isPublished;
  int? createdBy;
  int? updatedBy;
  int? deletedBy;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Product(
      {this.id,
      this.title,
      this.userId,
      this.ezyProductId,
      this.productTypeId,
      this.description,
      this.mrp,
      this.sellingPrice,
      this.sku,
      this.pages,
      this.isPrePrinted,
      this.pdfCustomizeOption,
      this.isPublished,
      this.createdBy,
      this.updatedBy,
      this.deletedBy,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Product.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    userId = json['user_id'];
    ezyProductId = json['ezy_product_id'];
    productTypeId = json['product_type_id'];
    description = json['description'];
    mrp = json['mrp'];
    sellingPrice = json['selling_price'];
    sku = json['sku'];
    pages = json['pages'];
    isPrePrinted = json['is_pre_printed'];
    pdfCustomizeOption = json['pdf_customize_option'];
    isPublished = json['is_published'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    deletedBy = json['deleted_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['user_id'] = this.userId;
    data['ezy_product_id'] = this.ezyProductId;
    data['product_type_id'] = this.productTypeId;
    data['description'] = this.description;
    data['mrp'] = this.mrp;
    data['selling_price'] = this.sellingPrice;
    data['sku'] = this.sku;
    data['pages'] = this.pages;
    data['is_pre_printed'] = this.isPrePrinted;
    data['pdf_customize_option'] = this.pdfCustomizeOption;
    data['is_published'] = this.isPublished;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['deleted_by'] = this.deletedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
