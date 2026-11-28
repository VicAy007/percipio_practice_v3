import 'package:material_ui/material_ui.dart';
import 'package:percipio_practice_3/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Store',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
