import 'package:material_ui/material_ui.dart';
import 'package:percipio_practice_3/screens/categories.dart';
import 'package:percipio_practice_3/screens/home.dart';
import 'package:percipio_practice_3/screens/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/home': (context) => const MyHomePage(),
        '/categories': (context) => const MyCategoriesPage(),
        '/snacks_beverages': (context) => const SnacksAndBeveragesProducts(),
        '/fruits_vegetables': (context) =>
            const FreshFruitsAndVegetablesProducts(),
      },
      title: 'Insta Store',
    );
  }
}
