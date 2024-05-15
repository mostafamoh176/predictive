import 'package:collection/collection.dart';

class CanAddOrViewModel {
  bool? add;
  bool? view;

  CanAddOrViewModel({this.add, this.view});

  factory CanAddOrViewModel.fromJson(Map<String, dynamic> json) =>
      CanAddOrViewModel(
        add: json['add'] as bool?,
        view: json['view'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'add': add,
        'view': view,
      };

  CanAddOrViewModel copyWith({
    bool? add,
    bool? view,
  }) {
    return CanAddOrViewModel(
      add: add ?? this.add,
      view: view ?? this.view,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! CanAddOrViewModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => add.hashCode ^ view.hashCode;
}
