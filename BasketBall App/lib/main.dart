import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBall());
}

class BasketBall extends StatefulWidget {
  const BasketBall({super.key});

  @override
  _BasketBallState createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void resetPoints() {
    setState(() {
      teamAPoints = 0;
      teamBPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Points Counter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 75)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start, // Ensure alignment at the top
              children: [
                // Team A
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(
                        fontSize: 90,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        style: ButtonStyle(
                          minimumSize: WidgetStateProperty.all<Size>(const Size(150, 50)),
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),
                          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        style: ButtonStyle(
                          minimumSize: WidgetStateProperty.all<Size>(const Size(150, 50)),
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),
                          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        style: ButtonStyle(
                          minimumSize: WidgetStateProperty.all<Size>(const Size(150, 50)),
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),
                          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                // Vertical Divider
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  height: 400, // Set a fixed height for the divider
                  child: const VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                // Team B
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(
                        fontSize: 90,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        style: ButtonStyle(
                          minimumSize: WidgetStateProperty.all<Size>(const Size(150, 50)),
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),
                          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        style: ButtonStyle(
                          minimumSize: WidgetStateProperty.all<Size>(const Size(150, 50)),
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),
                          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        style: ButtonStyle(
                          minimumSize: WidgetStateProperty.all<Size>(const Size(150, 50)),
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),
                          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ElevatedButton(
                onPressed: resetPoints,
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all<Size>(const Size(150, 50)),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.orange),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
