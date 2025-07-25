import 'package:flutter/material.dart';

class UiPage extends StatelessWidget {
  const UiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 500, // Enough height to avoid cutoff
        child: Stack(
          clipBehavior: Clip.none, // Allow overflow
          children: [
            Container(
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
            Positioned(
              top: 250,
              left: MediaQuery.of(context).size.width / 2 - 60, // Centered
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.network(
                    "https://tse3.mm.bing.net/th/id/OIP.EwG6x9w6RngqsKrPJYxULAHaHa?cb=thvnextc2&rs=1&pid=ImgDetMain&o=7&rm=3",
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
