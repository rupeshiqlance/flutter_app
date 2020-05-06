
import 'package:json_annotation/json_annotation.dart';
part 'KeydateResponse.g.dart';
@JsonSerializable()
class KeydateResponse{
  @JsonKey(name: "apiKey")
  String apiKey;
  @JsonKey(name: "role")
  String role;
  KeydateResponse({this.apiKey, this.role});

  factory KeydateResponse.fromJson(Map<String, dynamic> json) => _$KeydateResponseFromJson(json);
  Map<String, dynamic> toJson() => _$KeydateResponseToJson(this);
}