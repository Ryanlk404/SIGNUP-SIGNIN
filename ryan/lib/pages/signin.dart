import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ryan/pages/signup.dart';
import 'package:ryan/pages/onboarding.dart'; // Import Onboarding page

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text(
          'Choose An Action',
          style: TextStyle(color: Colors.blueAccent),
        ),
        message: const Text('Select an option below'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            child: const Text('Sign Up'),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signup()),
              );
            },
          ),
          CupertinoActionSheetAction(
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              Navigator.pop(context); // Close the ActionSheet first
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Onboarding()),
                (Route<dynamic> route) => false, // Clears the navigation stack
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) {
            return TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero, // No extra padding
                minimumSize: Size(70, 50), // Ensures full area is tappable
                tapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // Removes extra space
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min, // Take only required space
                children: const [
                  Icon(Icons.arrow_back_ios_new, color: Colors.blue, size: 20),
                  SizedBox(width: 2),
                  Text(
                    'back',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 75),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffea3452), Color(0xffec4662), Color(0xffee5972)],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Onboarding()),
              (Route<dynamic> route) => false,
            );
          },
          child: const Text("Back to Onboarding"),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(left: 30, right: 30),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Hey There\nSign in!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email",
                    style: TextStyle(
                      color: Color(0xffea3452),
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xffea3452),
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      prefixIcon: Icon(Icons.key_outlined),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 2, 51, 136),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 58,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xffee5972),
                          Color(0xffec4662),
                          Color(0xffea3452),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: const Center(
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _showActionSheet(context),
                        child: const Text(
                          " Sign Up",
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 51, 136),
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
