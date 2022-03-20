import 'package:flutter/material.dart';
import 'models/fruit.dart';
import 'components/image_banner.dart';
import 'components/default_app_bar.dart';
import 'text_section.dart';

class FruitDetail extends StatelessWidget {
  final int _fruitID;

  FruitDetail(this._fruitID);

  @override
  Widget build(BuildContext context) {
    final fruits = Fruit.fetchAll();
    final fruit = Fruit.fetchByID();

    return Scaffold(
      appBar: DefaultAppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ImageBanner("assets/images/Banana.jpg")]
            ..addAll(textSections(fruit))),
    );
  }

  List<Widget> textSections(Fruit fruit) {
    return fruit.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
