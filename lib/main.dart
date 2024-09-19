import 'package:flutter/material.dart';
import 'package:sample_flutter_project/pentagon/pentagon_view.dart';
import 'package:sample_flutter_project/scrollview/custom_scroll_view.dart';
import 'package:sample_flutter_project/skeleton/skeleton_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: moveToPentagonView, child: const Center(child: Text('Pentagon'))),
              ElevatedButton(onPressed: moveToSkeletonView, child: const Center(child: Text('Skeleton'))),
              ElevatedButton(onPressed: moveToScrollBlocView, child: const Center(child: Text('CustomScrollView'))),
            ],
          ),
        ),
      ),
    );
  }

  void moveToPentagonView() => Navigator.push(context, MaterialPageRoute(builder: (context) => const PentagonView()));

  void moveToSkeletonView() => Navigator.push(context, MaterialPageRoute(builder: (context) => const SkeletonView()));

  void moveToScrollBlocView() =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomScrollBlocView()));
}
