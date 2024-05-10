import 'package:flutter/material.dart';

class FailureWdiget extends StatelessWidget {
  const FailureWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 120,
      width: double.infinity,
      child: Center(
        child: Icon(
          Icons.error,
        ),
      ),
    );
  }
}
