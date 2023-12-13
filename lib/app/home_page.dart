import 'package:flutter/material.dart';

import 'game_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/snacks.jpeg'),
                      fit: BoxFit.fill
                    ),

                    borderRadius: BorderRadius.circular(20),
                  ),),
            ),

            const SizedBox(height: 50.0),

            const Text('Welcome to SnakeGame', style: TextStyle(color: Colors.white, fontSize: 40.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold), textAlign: TextAlign.center),

            const SizedBox(height: 50.0),

            IconButton.outlined(
              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamePage()));
            },
              icon: const Icon(Icons.play_circle_filled, color: Colors.white, size: 30.0),
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),

            )
          ],
        ),
      )
    );
  }
}