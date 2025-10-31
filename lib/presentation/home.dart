import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int teamAScore = 0;
  int teamBScore = 0;

  void addPoints(String team, int points) {
    setState(() {
      if (team == 'A') {
        teamAScore += points;
      } else {
        teamBScore += points;
      }
    });
  }

  void resetScores() {
    setState(() {
      teamAScore = 0;
      teamBScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Points Counter"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Team A
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Team A",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$teamAScore",
                    style: const TextStyle(fontSize: 150),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => addPoints('A', 1),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text("Add 1 Point"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => addPoints('A', 2),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text("Add 2 Point"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => addPoints('A', 3),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text("Add 3 Point"),
                  ),
                ],
              ),

              // Team B
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Team B",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$teamBScore",
                    style: const TextStyle(fontSize: 150),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => addPoints('B', 1),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text("Add 1 Point"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => addPoints('B', 2),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text("Add 2 Point"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => addPoints('B', 3),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text("Add 3 Point"),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: resetScores,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            ),
            child: const Text(
              "Reset",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
