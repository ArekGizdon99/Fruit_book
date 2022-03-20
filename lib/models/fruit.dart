// docelowo pobieranie danych z api

import 'fruit_fact.dart';

class Fruit {
  final int id;
  String name;
  String imagePath;
  final List<FruitFact> facts;

  Fruit(this.id, this.name, this.imagePath, this.facts);

  static Fruit fetchByID() {
    List<Fruit> fruits = Fruit.fetchAll();
    return Fruit(1, 'Banana', 'assets/images/banana.jpg', [
      FruitFact('What is their color?', 'Bananas are yellow'),
      FruitFact('Where they grow?', 'On the palms')
    ]);
  }

  static List<Fruit> fetchAll() {
    return [
      Fruit(1, 'Banana', 'assets/images/banana.jpg', [
        FruitFact('What is their color?', 'Bananas are yellow'),
        FruitFact('Where they grow?', 'On the palms')
      ]),
      Fruit(2, 'Apple', 'assets/images/apple.jpg', [
        FruitFact('What is their color?', 'Apples are red'),
        FruitFact('Where they grow?', 'In the courts')
      ]),
      Fruit(3, 'Strawberry', 'assets/images/strawberry.jpg', [
        FruitFact('What is their color?', 'Strawberries are red'),
        FruitFact('Where they grow?', 'In the patch')
      ]),
      Fruit(4, 'Watermelon', 'assets/images/Watermelon.jpg', [
        FruitFact('What is their color?', 'Watermelons are green'),
        FruitFact('Where they grow?', 'In the patch')
      ]),
      Fruit(5, 'Orange', 'assets/images/Orange.jpg', [
        FruitFact('What is their color?', 'Oranges are orange'),
        FruitFact('Where they grow?', 'In the sapling')
      ]),
    ];
  }
}
