import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutta').animate().fadeIn(), backgroundColor: Colors.transparent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onLongPress: () {
                // meme easter egg
                final memes = ['To the moon 🚀', 'Diamond hands 💎', 'HODL strong!', 'Wen Lambo?'];
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(memes[DateTime.now().millisecond % 4])));
              },
              child: Text('Flutta', style: TextStyle(fontSize: 48, color: Colors.tealAccent)).animate().shake(),
            ),
            const SizedBox(height: 40),
            const Text('0.00 ETH', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}