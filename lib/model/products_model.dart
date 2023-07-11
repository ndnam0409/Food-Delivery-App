// ignore_for_file: unnecessary_new, unnecessary_this, unused_field

class Product{
  int? _totalSize;
  int? _typeID;
  int? _offset;
  late List<ProductModel>? _products;
  List<ProductModel>? get products => _products;

  Product({required totalSize, required typeID, required offset, required products}){
    this._totalSize = totalSize;
    this._typeID = typeID;
    this._offset = offset;
    this._products = products;
    
  }

  
  Product.fromJson(Map<String, dynamic> json){
    _totalSize = json['total_size'];
    _typeID = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null){
      _products = <ProductModel>[];
      json['products'].forEach((v){
        products!.add(new ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel{
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? image;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;

  ProductModel(
    {
      this.id,
      this.name,
      this.description,
      this.price,
      this.stars, 
      this.image,
      this.location, 
      this.createdAt, 
      this.updatedAt, 
      this.typeId
    }
  );
  
  ProductModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stars = json['stars'];
    image = json['image'];
    location = json['location'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    typeId = json['type_id'];
  }
}