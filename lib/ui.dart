import 'package:flutter/material.dart';

class UiPage extends StatelessWidget {
  final String name;
  final String email;
  const UiPage({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 600,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 150),
                    Text(
                      name,
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      email,
                      style: TextStyle(fontSize: 20, color: Colors.white54),
                    ),
                  ],
                ),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 180,
              child: CircleAvatar(
                radius: 60,
                child: Image.network(
                  "https://tse3.mm.bing.net/th/id/OIP.EwG6x9w6RngqsKrPJYxULAHaHa?cb=thvnextc2&rs=1&pid=ImgDetMain&o=7&rm=3",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
