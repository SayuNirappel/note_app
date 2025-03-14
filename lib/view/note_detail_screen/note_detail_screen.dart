import 'package:flutter/material.dart';

void main() {}

class NoteDetailScreen extends StatelessWidget {
  const NoteDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "Note Title",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "The golden rays of the morning sun filtered through the dense canopy, casting dappled shadows on the forest floor. Birds chirped in harmony, their melodies blending with the rustling of leaves as a gentle breeze whispered through the ancient trees. A narrow dirt path wound its way between towering trunks, leading deeper into the heart of the wilderness. The air was rich with the scent of damp earth and blooming flowers, a reminder of nature’s quiet resilience. Every step forward felt like an invitation into a world untouched by time, where the whispers of the past lingered in the rustling leaves and the distant call of unseen creatures.",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
