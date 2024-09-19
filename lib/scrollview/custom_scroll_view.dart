import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_flutter_project/scrollview/cusstom_scroll_cubit.dart';
import 'package:sample_flutter_project/scrollview/custom_scroll_state.codegen.dart';

class CustomScrollBlocView extends StatelessWidget {
  const CustomScrollBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CustomScrollCubit()..init(),
      child: BlocListener<CustomScrollCubit, CustomScrollState>(
        listener: (context, state) {},
        child: const SampleScrollView(),
      ),
    );
  }
}

class SampleScrollView extends StatelessWidget {
  const SampleScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    scrollController.addListener(() {
      context.read<CustomScrollCubit>().updateOffset(scrollController.offset);
    });

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: GestureDetector(
          onPanDown: (_) => context.read<CustomScrollCubit>().updateDropDownStatus(false),
          child: BlocBuilder<CustomScrollCubit, CustomScrollState>(
            builder: (context, state) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.read<CustomScrollCubit>().updateOffset(scrollController.offset);
              });
              return Stack(
                children: [
                  CustomScrollView(
                    controller: scrollController,
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                              child: InkWell(
                                onTap: () => context.read<CustomScrollCubit>().updateDropDownStatus(true),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [Text(state.selectedDropDownOption), const Icon(Icons.arrow_drop_down)],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliverPersistentHeader(pinned: true, delegate: CategoryDelegate(state: state)),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return ListTile(
                              title: _productItem(context, state.visibleDataList[index]),
                              contentPadding: EdgeInsets.zero,
                            );
                          },
                          childCount: state.visibleDataList.length,
                        ),
                      ),
                    ],
                  ),
                  if (state.isDropDownOpened)
                    Positioned(
                      top: 66 - state.scrollOffset,
                      left: 10,
                      child: _dropDown(context, state),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _dropDown(BuildContext context, CustomScrollState state) {
    return GestureDetector(
      onPanDown: (_) {},
      child: DecoratedBox(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ]),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          width: 240,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _dropDownItem(context, 'option1', 0, state),
              _dropDownItem(context, 'option2', 1, state),
              _dropDownItem(context, 'option3', 2, state),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dropDownItem(BuildContext context, String text, int index, CustomScrollState state) {
    final isSelected = index == state.selectedDropDownIndex;
    return GestureDetector(
      onPanDown: (_) => context.read<CustomScrollCubit>().updateDropDownIndex(index),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 17),
        child: Row(
          children: [
            Text(text),
            const Spacer(),
            if (isSelected) const Icon(Icons.check),
          ],
        ),
      ),
    );
  }

  Widget _productItem(BuildContext context, DummyDataType info) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[100],
      ),
      child: Text(info.text1),
    );
  }
}

class CategoryDelegate extends SliverPersistentHeaderDelegate {
  CategoryDelegate({required this.state});

  final CustomScrollState state;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _categoryRow(context, state);
  }

  @override
  double get maxExtent => 64;

  @override
  double get minExtent => 64;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  Widget _categoryRow(BuildContext context, CustomScrollState state) {
    return Container(
      padding: const EdgeInsets.only(right: 10, top: 16),
      color: Colors.blueAccent,
      child: Row(
        children: [
          _categoryButton(context, 'A', state, 0),
          _categoryButton(context, 'B', state, 1),
          _categoryButton(context, 'C', state, 2),
        ],
      ),
    );
  }

  Widget _categoryButton(BuildContext context, String text, CustomScrollState state, int index) {
    final tabIndex = state.tabIndex;
    final count = state.fullDataList.where((element) => element.status == index).length;
    final isSelected = tabIndex == index;
    final fontWeight = isSelected ? FontWeight.w900 : FontWeight.normal;
    final spacerHeight = isSelected ? 8.0 : 1.0;

    return Flexible(
      flex: 1,
      child: GestureDetector(
        onTap: () => context.read<CustomScrollCubit>().onTapCategory(index),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: spacerHeight, color: Colors.indigo)),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text, style: TextStyle(color: Colors.white, fontWeight: fontWeight)),
                const SizedBox(width: 4),
                Text('$count', style: TextStyle(color: Colors.white, fontWeight: fontWeight)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DummyDataType {
  DummyDataType(this.status, this.text1);

  final int status;
  final String text1;
}
