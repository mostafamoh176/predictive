class RangeModel {
  String? lat;
  String? long;
  String? range;

  RangeModel({
    this.lat,
    this.long,
    this.range,
  });

  RangeModel.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    long = json['lang'];
    range = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = lat;
    data['lang'] = long;
    data['distance'] = range;
    return data;
  }
}
