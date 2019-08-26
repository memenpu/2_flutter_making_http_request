import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'product.g.dart';

@JsonSerializable()
class Product extends Object{
  final User user;
  Product({this.user});
  factory Product.fromJson(Map<String, dynamic> json)=>_$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}