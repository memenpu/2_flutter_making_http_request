import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

// flutter packages pub run build_runner build
@JsonSerializable()
class User extends Object{
  @JsonKey(name: "avatar_image_url")
  final String avatarImageUrl;
  final String nickName;
  User({this.avatarImageUrl,this.nickName});
  factory User.fromJson(Map<String, dynamic> json)=>_$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}