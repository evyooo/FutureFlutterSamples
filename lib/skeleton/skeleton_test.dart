import 'package:flutter/material.dart';
import 'package:sample_flutter_project/skeleton/skeleton.dart';

class SkeletonTest extends StatelessWidget {
  const SkeletonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(child: SampleSkeleton(height: 200)),
      ),
      backgroundColor: Colors.white,
    );
  }
}
