import 'package:flutter/cupertino.dart';

class button extends StatelessWidget {
  const button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          CupertinoButton(
            onPressed: null,
            child: Text('Click Here'),
          ),
          SizedBox(height: 30),
          CupertinoButton.filled(
            onPressed: null,
            child: Text('Click Here'),
          ),
        ],
      ),
    );
  }
}