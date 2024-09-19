import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_flutter_project/scrollview/custom_scroll_view.dart';

part 'custom_scroll_state.codegen.freezed.dart';

@Freezed(toStringOverride: true, equal: true)
sealed class CustomScrollState with _$CustomScrollState {
  const factory CustomScrollState.empty(CustomScrollData data) = Empty;

  const CustomScrollState._();
  int get tabIndex => data.tabIndex;
  List<DummyDataType> get fullDataList => data.fullDataList;
  List<DummyDataType> get visibleDataList => data.visibleDataList;
  double get scrollOffset => data.scrollOffset;
  bool get isDropDownOpened => data.isDropDownOpened;
  int get selectedDropDownIndex => data.selectedDropDownIndex;
  String get selectedDropDownOption {
    final dropDownOption = ['option1', 'option2', 'option3'];
    return dropDownOption[data.selectedDropDownIndex];
  }
}

@Freezed(toStringOverride: true, equal: true, copyWith: true)
class CustomScrollData with _$CustomScrollData {
  const factory CustomScrollData({
    @Default(0) int tabIndex,
    @Default([]) List<DummyDataType> fullDataList,
    @Default([]) List<DummyDataType> visibleDataList,
    @Default(0.0) double scrollOffset,
    @Default(false) bool isDropDownOpened,
    @Default(0) int selectedDropDownIndex,
  }) = _CustomScrollData;
}
