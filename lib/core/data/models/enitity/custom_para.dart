import '../base_entity.dart';

class CustomPara extends BaseEntity {
  Map<String , dynamic>? parameters;

  CustomPara({required this.parameters});


  @override
  fromJson(Map<String, dynamic> json) {
    return json;
  }

  @override
  Map<String, dynamic> toJson() {
    return parameters!;
  }
}
