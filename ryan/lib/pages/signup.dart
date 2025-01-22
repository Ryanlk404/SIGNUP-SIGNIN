import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ryan/pages/signin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Choose An Action'),
        message: const Text('Select an option below'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            child: const Text('Sign In'),
            onPressed: () {
              Navigator.pop(context); // Close the ActionSheet
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignIn()),
              );
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Close'),
            onPressed: () {
              Navigator.pop(context); // Close the ActionSheet
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff2c4e2d), Color(0xff335b34), Color(0xff3b683c)],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: const Text(
                "Create Your\nAccount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(
                          color: Color(0xff2c4e2d),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Name",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 197, 47, 1),
                          ),
                          prefixIcon: Icon(Icons.person_outlined),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Email",
                        style: TextStyle(
                          color: Color(0xff2c4e2d),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 197, 47, 1),
                          ),
                          prefixIcon: Icon(Icons.email_outlined),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        "Password",
                        style: TextStyle(
                          color: Color(0xff2c4e2d),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 197, 47, 1),
                          ),
                          prefixIcon: Icon(Icons.key_outlined),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        height: 58,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff3b683c),
                              Color(0xff335b34),
                              Color(0xff2c4e2d)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: const Center(
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              shadows: [
                                Shadow(
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                              letterSpacing: 1.5,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "Already have an account?",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => _showActionSheet(context),
                                child: const Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 84, 230),
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
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
