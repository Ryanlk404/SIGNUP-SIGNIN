import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ryan/pages/signin.dart';
import 'package:ryan/pages/signup.dart';

class Actionsheet50 extends StatefulWidget {
  const Actionsheet50({Key? key}) : super(key: key);

  @override
  State<Actionsheet50> createState() => _Actionsheet50State();
}

class _Actionsheet50State extends State<Actionsheet50> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: const Text('Ex-Montibus Luminae'),
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('Choose an Action'),
                message: const Text('Select an option below'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    child: const Text('Sign In'),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: const Text('Close'),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
            ); // showCupertinoModalPopup
          },
        ),
      ),
    );
  }
}
