class CartModel {
  int? itemsprice;
  int? countitems;
  int? cardID;
  int? cardUserid;
  int? cardItemid;
  int? itemID;
  int? itemCategory;
  String? itemName;
  String? itemNameAr;
  String? itemDesc;
  String? itemDescAr;
  String? itemImage;
  int? itemCount;
  int? itemDiscount;
  int? itemPrice;
  int? itemActive;
  String? itemDate;

  CartModel(
      {this.itemsprice,
      this.countitems,
      this.cardID,
      this.cardUserid,
      this.cardItemid,
      this.itemID,
      this.itemCategory,
      this.itemName,
      this.itemNameAr,
      this.itemDesc,
      this.itemDescAr,
      this.itemImage,
      this.itemCount,
      this.itemDiscount,
      this.itemPrice,
      this.itemActive,
      this.itemDate});

  CartModel.fromJson(Map<String, dynamic> json) {
    itemsprice = json['itemsprice'];
    countitems = json['countitems'];
    cardID = json['Card_ID'];
    cardUserid = json['Card_userid'];
    cardItemid = json['Card_itemid'];
    itemID = json['item_ID'];
    itemCategory = json['item_category'];
    itemName = json['item_name'];
    itemNameAr = json['item_name_ar'];
    itemDesc = json['item_desc'];
    itemDescAr = json['item_desc_ar'];
    itemImage = json['item_image'];
    itemCount = json['item_count'];
    itemDiscount = json['item_discount'];
    itemPrice = json['item_price'];
    itemActive = json['item_active'];
    itemDate = json['item_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemsprice'] = this.itemsprice;
    data['countitems'] = this.countitems;
    data['Card_ID'] = this.cardID;
    data['Card_userid'] = this.cardUserid;
    data['Card_itemid'] = this.cardItemid;
    data['item_ID'] = this.itemID;
    data['item_category'] = this.itemCategory;
    data['item_name'] = this.itemName;
    data['item_name_ar'] = this.itemNameAr;
    data['item_desc'] = this.itemDesc;
    data['item_desc_ar'] = this.itemDescAr;
    data['item_image'] = this.itemImage;
    data['item_count'] = this.itemCount;
    data['item_discount'] = this.itemDiscount;
    data['item_price'] = this.itemPrice;
    data['item_active'] = this.itemActive;
    data['item_date'] = this.itemDate;
    return data;
  }
}