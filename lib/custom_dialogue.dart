import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final tital;
  final content;
  final VoidCallback callback;
  final actionText;

  CustomDialog(this.tital, this.content, this.callback,
      [this.actionText = "Rest"]);
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: new Text(tital),
      content: new Text(content),
      actions: <Widget>[
        new FlatButton(
          onPressed: callback,
          color: Colors.white,
          child: new Text(actionText),
        )
      ],
    );
  }
}
