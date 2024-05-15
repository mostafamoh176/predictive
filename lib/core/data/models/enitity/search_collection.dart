import 'package:collection/collection.dart';

import 'view_and_search.dart';

class SearchCollection {
  SearchAndViewModel? users;
  SearchAndViewModel? vendor;
  SearchAndViewModel? agencies;

  SearchCollection({this.users, this.vendor, this.agencies});

  factory SearchCollection.fromJson(Map<String, dynamic> json) {
    return SearchCollection(
      users: json['users'] == null
          ? null
          : SearchAndViewModel.fromJson(json['users'] as Map<String, dynamic>),
      vendor: json['vendor'] == null
          ? null
          : SearchAndViewModel.fromJson(json['vendor'] as Map<String, dynamic>),
      agencies: json['agencies'] == null
          ? null
          : SearchAndViewModel.fromJson(
              json['agencies'] as Map<String, dynamic>,),
    );
  }

  Map<String, dynamic> toJson() => {
        'users': users?.toJson(),
        'vendor': vendor?.toJson(),
        'agencies': agencies?.toJson(),
      };

  SearchCollection copyWith({
    SearchAndViewModel? users,
    SearchAndViewModel? vendor,
    SearchAndViewModel? agencies,
  }) {
    return SearchCollection(
      users: users ?? this.users,
      vendor: vendor ?? this.vendor,
      agencies: agencies ?? this.agencies,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SearchCollection) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => users.hashCode ^ vendor.hashCode ^ agencies.hashCode;
}
