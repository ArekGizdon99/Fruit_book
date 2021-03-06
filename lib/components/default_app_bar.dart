import 'package:flutter/material.dart';
import '../styles.dart';

class DefaultAppBar extends AppBar {
  @override
  final Widget title = const Text('Fruit Book', style: navBarTitle);

  @override
  final IconThemeData iconTheme = IconThemeData(color: Colors.black);

  @override
  final Color backgroundColor = Colors.green;

  @override
  final bool centerTitle = true;

  @override
  final double elevation = 0.5;
}
