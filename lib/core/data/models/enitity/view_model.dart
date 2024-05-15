import 'package:collection/collection.dart';

class CanViewModel {
  bool? chat;
  bool? block;
  bool? delete;
  bool? mobile;
  bool? company;
  bool? agents;
  bool? owner;
  bool? lock;

  CanViewModel(
      {this.chat,
      this.block,
      this.delete,
      this.mobile,
      this.company,
      this.agents,
      this.owner,
      this.lock,});

  factory CanViewModel.fromJson(Map<String, dynamic> json) => CanViewModel(
        chat: json['chat'] as bool?,
        block: json['block'] as bool?,
        delete: json['delete'] as bool?,
        mobile: json['mobile'] as bool?,
        company: json['company'] as bool?,
        agents: json['agents'] as bool?,
        owner: json['owner'] as bool?,
        lock: json['lock'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'chat': chat,
        'block': block,
        'delete': delete,
        'mobile': mobile,
        'company': company,
        'agents': agents,
        'owner': owner,
        'lock': lock,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! CanViewModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      chat.hashCode ^ block.hashCode ^ delete.hashCode ^ mobile.hashCode;
}
