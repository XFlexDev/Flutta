import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({super.key});

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 3));
  }

  void _sendAll() {
    // TODO: call wallet service
    _confettiController.play();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Sent all funds! 🎉')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Send')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: const InputDecoration(labelText: 'To Address')),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _sendAll,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, minimumSize: const Size(double.infinity, 60)),
              child: const Text('SEND ENTIRE BALANCE', style: TextStyle(fontSize: 18)),
            ).animate().scale(),
            ConfettiWidget(confettiController: _confettiController, blastDirectionality: BlastDirectionality.explosive),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }
}