import 'package:collection/collection.dart';

import '../../../data/models/enitity/view_model.dart';

class SearchAndViewModel {
  CanViewModel? view;
  bool? search;

  SearchAndViewModel({this.view, this.search});

  factory SearchAndViewModel.fromJson(Map<String, dynamic> json) => SearchAndViewModel(
        view: json['view'] == null ? null : CanViewModel.fromJson(json['view'] as Map<String, dynamic>),
        search: json['search'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'view': view?.toJson(),
        'search': search,
      };

  SearchAndViewModel copyWith({
    CanViewModel? view,
    bool? search,
  }) {
    return SearchAndViewModel(
      view: view ?? this.view,
      search: search ?? this.search,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! SearchAndViewModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => view.hashCode ^ search.hashCode;
}
