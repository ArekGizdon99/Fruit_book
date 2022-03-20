import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _text;

  TextSection(this._title, this._text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Text(_title), Text(_text)],
    );
  }
}
