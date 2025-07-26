import 'package:flutter/material.dart';

class DayTwoClass extends StatelessWidget {
  const DayTwoClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,

        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Positioned(
                    child: Container(
                      height: 250,
                      color: Colors.white,
                      child: Image.network(
                        "https://tse2.mm.bing.net/th/id/OIP.vmNFOCABHSsCgOewDHziSQHaEI?rs=1&pid=ImgDetMain&o=7&rm=3",
                      ),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.grey,
                              hintText: "Enter Password",

                              label: Text(
                                "Enter your password",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.grey,
                              hintText: "Name",

                              label: Text(
                                "Enter your Name",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.grey,
                              hintText: "Enter Email",

                              label: Text(
                                "Enter your Email",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 450,
                            color: Colors.yellow,
                            child: ElevatedButton(
                              onPressed: () {
                                print("Is work");
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
