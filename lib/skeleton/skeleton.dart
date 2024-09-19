import 'package:flutter/material.dart';
import 'package:sample_flutter_project/const_color.dart';

class SampleSkeleton extends StatefulWidget {
  const SampleSkeleton({
    super.key,
    required this.height,
  });

  final double height;

  @override
  State<SampleSkeleton> createState() => _SampleSkeletonState();
}

class _SampleSkeletonState extends State<SampleSkeleton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  BoxConstraints? _constraints;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 900), vsync: this)..repeat(reverse: false);
    _startAnimation();
  }

  Future<void> _startAnimation() async {
    while (mounted) {
      await _controller.forward(); // 애니메이션 진행
      if (mounted) await Future.delayed(const Duration(milliseconds: 300)); // 대기
      if (mounted) _controller.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (_constraints == null || _constraints != constraints) {
          _constraints = constraints;
          _animation = Tween<double>(
            begin: -constraints.maxWidth,
            end: constraints.maxWidth,
          ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
        }

        return SizedBox(
          height: widget.height,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: [
                Container(color: ConstColor.skeletonBackgroundColor),
                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) => Transform.translate(offset: Offset(_animation.value, 0), child: child),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                        colors: [ConstColor.transparent, ConstColor.skeletonGradientColor, ConstColor.transparent],
                        tileMode: TileMode.clamp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
