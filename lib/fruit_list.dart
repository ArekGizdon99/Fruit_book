import 'package:flutter/material.dart';
import 'models/fruit.dart';
import 'components/default_app_bar.dart';
import 'app.dart';

int counter = 0;

class FruitList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fruits = Fruit.fetchAll();

    return Scaffold(
        appBar: DefaultAppBar(),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Choose fruit to see details',
              textAlign: TextAlign.center,
              textScaleFactor: 0.5,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: fruits.length,
              itemBuilder: ((BuildContext context, index) {
                return GestureDetector(
                    onTap: () => _onFruitTap(context, fruits[index].id),
                    child: Container(
                        margin: EdgeInsets.all(10),
                        height: 150.0,
                        child: Stack(children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                  'assets/images/' +
                                      fruits[index].name +
                                      '.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.7),
                                          Colors.transparent
                                        ])),
                              )),
                          Positioned(
                              bottom: 0,
                              left: 10,
                              right: 0,
                              child: Text(fruits[index].name,
                                  textScaleFactor: 2.0,
                                  style: TextStyle(color: Colors.white)))
                        ])));
              }),
            ))
          ],
        )));
  }

  _onFruitTap(BuildContext context, int fruitID) {
    counter++;
    Navigator.pushNamed(context, FruitDetailRoute, arguments: {"id": fruitID});
  }
}
