class PriceModel {
  String? min15;
  String? min30;
  String? min45;
  String? min60;

  PriceModel({this.min15, this.min30, this.min45, this.min60});

  PriceModel.fromJson(Map<String, dynamic> json) {
    min15 = json['min15'];
    min30 = json['min30'];
    min45 = json['min45'];
    min60 = json['min60'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['min15'] = min15;
    data['min30'] = min30;
    data['min45'] = min45;
    data['min60'] = min60;
    return data;
  }
}
