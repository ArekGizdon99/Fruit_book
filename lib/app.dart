import 'package:flutter/material.dart';
import 'fruit_list.dart';
import 'fruit_detail.dart';
import 'styles.dart';

const FruitListRoute = '/';
const FruitDetailRoute = '/fruit_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FruitList(),
      theme: ThemeData(textTheme: const TextTheme(bodyText2: Body1Style)),
      onGenerateRoute: _routes(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments =
          settings.arguments as Map<String, dynamic>;
      Widget screen;
      switch (settings.name) {
        case FruitListRoute:
          screen = FruitList();
          break;
        case FruitDetailRoute:
          screen = FruitDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
