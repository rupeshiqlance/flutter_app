
import 'package:json_annotation/json_annotation.dart';
part 'CommonResponse.g.dart';
@JsonSerializable()
class CommonResponse {
  @JsonKey()
  int status;
  @JsonKey()
  Map<String, dynamic> data;
  @JsonKey()
  String message;

  CommonResponse({this.status, this.data, this.message});
  factory CommonResponse.fromJson(Map<String, dynamic> json) => _$CommonResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CommonResponseToJson(this);
}

