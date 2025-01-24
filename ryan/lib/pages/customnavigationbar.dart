import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  const CustomNavigationBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      backgroundColor: Colors.white,
      middle: Text(
        title,
        style: const TextStyle(
          color: Colors.pinkAccent,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(44.0); // Standard height
}
