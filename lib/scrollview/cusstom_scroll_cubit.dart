import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_flutter_project/scrollview/custom_scroll_state.codegen.dart';
import 'package:sample_flutter_project/scrollview/custom_scroll_view.dart';

class CustomScrollCubit extends Cubit<CustomScrollState> {
  CustomScrollCubit() : super(_initState);

  static CustomScrollState get _initState => const CustomScrollState.empty(CustomScrollData());

  List<DummyDataType> generateDummy() {
    final list = List.generate(30, (index) => DummyDataType(index % 2, 'sample text $index'));
    list.add(DummyDataType(2, 'test'));
    list.add(DummyDataType(2, 'test'));
    return list;
  }

  void init() {
    emit(CustomScrollState.empty(state.data.copyWith(fullDataList: generateDummy())));
    _updateVisibleList();
  }

  void updateOffset(double offset) {
    emit(CustomScrollState.empty(state.data.copyWith(scrollOffset: offset)));
  }

  void updateDropDownIndex(int index) {
    emit(CustomScrollState.empty(state.data.copyWith(selectedDropDownIndex: index)));
    updateDropDownStatus(false);
  }

  void updateDropDownStatus(bool open) {
    emit(CustomScrollState.empty(state.data.copyWith(isDropDownOpened: open)));
  }

  void onTapCategory(int tabIndex) {
    emit(CustomScrollState.empty(state.data.copyWith(tabIndex: tabIndex)));
    _updateVisibleList();
  }

  void _updateVisibleList() {
    final dataList = state.fullDataList.where((element) => element.status == state.tabIndex).toList();
    emit(CustomScrollState.empty(state.data.copyWith(visibleDataList: dataList)));
  }
}
