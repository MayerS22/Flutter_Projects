import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF21375C),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Circular Profile Image
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/Mayer Soliman.png',
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16.0), // Space between image and text
              const Text(
                "Mayer Soliman",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                ),
              ),
              const Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              const Divider(
                color: Colors.white,
                indent: 32,
                endIndent: 32,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.white,
                child: const ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 24,
                    color: Color(0xFF21375C),
                  ),
                  title: Text("(+20) 1288244283",
                      style: TextStyle(fontSize: 18, color: Color(0xFF21375C))),
                ),
              ),

              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.white,
                child: const ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 24,
                    color: Color(0xFF21375C),
                  ),
                  title: Text("mayerfrieg@outlook.com",
                      style: TextStyle(fontSize: 18, color: Color(0xFF21375C))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
