import 'package:flutter/material.dart';

class CircleSlider extends StatelessWidget {
  const CircleSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
      child: Container(
        margin: const EdgeInsets.all(1),
        width: 5,
        height: 5,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Container(
          margin: const EdgeInsets.all(1),
          width: 4,
          height: 4,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        ),
      ),
    );
  }
}
