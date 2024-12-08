import 'package:flutter/material.dart';

class FeelingsCard extends StatelessWidget {
  const FeelingsCard({super.key, required this.emoji, required this.emojiText});

  final String emoji;
  final String emojiText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  emoji,
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            Text(
              emojiText,
              style: TextStyle(fontSize: 23, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
