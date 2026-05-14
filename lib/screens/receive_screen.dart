import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ReceiveScreen extends StatelessWidget {
  const ReceiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Receive').animate().fadeIn()),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Receive', style: TextStyle(fontSize: 32)).animate().fadeIn(),
            const SizedBox(height: 40),
            const Text('QR Code coming soon'),
          ],
        ),
      ),
    );
  }
}
