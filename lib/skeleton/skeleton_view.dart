import 'package:flutter/material.dart';
import 'package:sample_flutter_project/skeleton/skeleton.dart';

class SkeletonView extends StatelessWidget {
  const SkeletonView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 40, child: SampleSkeleton(height: 40)),
                  SizedBox(width: 12),
                  Flexible(child: SampleSkeleton(height: 24)),
                ],
              ),
              SizedBox(height: 20),
              SampleSkeleton(height: 200),
              SizedBox(height: 24),
              SampleSkeleton(height: 24),
              SizedBox(height: 12),
              SampleSkeleton(height: 24),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(width: 80, child: SampleSkeleton(height: 80)),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      children: [
                        SampleSkeleton(height: 20),
                        SizedBox(height: 10),
                        SampleSkeleton(height: 20),
                        SizedBox(height: 10),
                        SampleSkeleton(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  SizedBox(width: 80, child: SampleSkeleton(height: 20)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
