class Product {
  String? productId;
  String? userId;
  String? productName;
  String? productDesc;
  String? productPrice;
  String? productDelivery;
  String? productQty;
  String? productState;
  String? productLocal;
  String? productLat;
  String? productLong;
  String? productDate;

  Product(
      {this.productId,
      this.userId,
      this.productName,
      this.productDesc,
      this.productPrice,
      this.productDelivery,
      this.productQty,
      this.productState,
      this.productLocal,
      this.productLat,
      this.productLong,
      this.productDate});

  Product.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    userId = json['user_id'];
    productName = json['product_name'];
    productDesc = json['product_desc'];
    productPrice = json['product_price'];
    productDelivery = json['product_delivery'];
    productQty = json['product_qty'];
    productState = json['product_state'];
    productLocal = json['product_local'];
    productLat = json['product_lat'];
    productLong = json['product_long'];
    productDate = json['product_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_id'] = productId;
    data['user_id'] = userId;
    data['product_name'] = productName;
    data['product_desc'] = productDesc;
    data['product_price'] = productPrice;
    data['product_delivery'] = productDelivery;
    data['product_qty'] = productQty;
    data['product_state'] = productState;
    data['product_local'] = productLocal;
    data['product_lat'] = productLat;
    data['product_long'] = productLong;
    data['product_date'] = productDate;
    return data;
  }
}
