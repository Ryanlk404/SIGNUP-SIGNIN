import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool _isHovered = false; // Hover state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Prevents body from being cut off
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56), // Standard AppBar height
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff9c916d), Color(0xff928763), Color(0xff9c916d)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent, // Transparent to show gradient
            elevation: 0, // Removes shadow for a cleaner look
            titleSpacing: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text(
              "Forgot Password",
              style: TextStyle(
                color: Colors.white, // Change text color to white for contrast
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xfffec171), // First color
              const Color(0xfffeca85), // Second color
              const Color(0xfffed39a), // Third color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.2, 0.5, 0.8], // Controls where colors blend
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: kToolbarHeight + 20), // Push content below AppBar
              const Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Adjust text for contrast
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Enter your email to reset password",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Adjust text for contrast
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: const TextStyle(
                      color: Colors.black45), // Subtle hint color
                  prefixIcon:
                      const Icon(Icons.email_outlined, color: Colors.black),
                  filled: true,
                  fillColor: Colors.white
                      .withOpacity(0.3), // Slightly more visible field
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25), // Curved edges
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(
                    color: Colors.black), // Black text inside field
              ),
              const SizedBox(height: 30),
              MouseRegion(
                onEnter: (_) => setState(() => _isHovered = true),
                onExit: (_) => setState(() => _isHovered = false),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _isHovered ? Colors.blueAccent : Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    // Handle password reset
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    child: Text(
                      "SEND",
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
