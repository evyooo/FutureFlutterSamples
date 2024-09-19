import 'package:flutter/material.dart';
import 'package:sample_flutter_project/pentagon/pentagon.dart';

class PentagonView extends StatelessWidget {
  const PentagonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _arrow(const Size(double.infinity, 40), Colors.green, 4, 207 / 216),
              _arrow(const Size(double.infinity, 40), Colors.blueAccent, 4, 1 / 2),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        _arrow(const Size(30, double.infinity), Colors.pinkAccent, 1, 1 / 2),
                        const SizedBox(width: 20),
                      ],
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Flexible(flex: 1, child: _arrow(const Size(double.infinity, 80), Colors.yellow, 1, 1 / 2)),
                  Flexible(flex: 1, child: _arrow(const Size(double.infinity, 80), Colors.yellow, 1, 1 / 2)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _arrow(Size size, Color color, double radius, double xRatio) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: CustomPaint(size: size, painter: SamplePentagon(color: color, radius: radius, xRatio: xRatio)),
    );
  }
}
