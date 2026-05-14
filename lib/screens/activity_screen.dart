import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Activity').animate().fadeIn()),
      body: const Center(
        child: Text('Transaction history coming soon'),
      ),
    );
  }
}
