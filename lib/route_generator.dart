import 'package:material_ui/material_ui.dart';
import 'package:percipio_practice_3/screens/categories.dart';
import 'package:percipio_practice_3/screens/home.dart';
import 'package:percipio_practice_3/screens/products.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
      case '/home':
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case '/categories':
        return MaterialPageRoute(builder: (_) => MyCategoriesPage(args: args));
      case '/products':
        return MaterialPageRoute(builder: (_) => Products(args: args ));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Error'),
          ),
          body: const Center(child: Text('Oops! Page not found')),
        );
      },
    );
  }
}
