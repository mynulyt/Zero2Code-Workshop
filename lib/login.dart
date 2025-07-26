import 'package:first_app/ui.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                color: Colors.white,
                child: Image.network(
                  "https://tse2.mm.bing.net/th/id/OIP.vmNFOCABHSsCgOewDHziSQHaEI?rs=1&pid=ImgDetMain&o=7&rm=3",
                ),
              ),
              const SizedBox(height: 20),
              const Text("Password"),
              const SizedBox(height: 20),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Enter your password"),
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Name"),
              const SizedBox(height: 20),

              TextField(
                controller: nameController,

                decoration: const InputDecoration(
                  label: Text("Enter your Name"),
                  hintText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Email"),
              const SizedBox(height: 20),

              TextField(
                controller: emailController,

                decoration: const InputDecoration(
                  label: Text("Enter your Email"),
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => UiPage(
                            name: nameController.text,
                            email: emailController.text,
                          ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  height: 60,
                  width: 450,

                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
