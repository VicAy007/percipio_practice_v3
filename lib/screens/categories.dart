import 'package:material_ui/material_ui.dart';
import 'package:percipio_practice_3/screens/products.dart';

class MyCategoriesPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text(
          'Insta Store',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200.0,
            margin: const EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: Colors.grey, width: 10.0),
                right: BorderSide(color: Colors.grey, width: 10.0),
                top: BorderSide(color: Color(0x776ae792), width: 20.0),
                bottom: BorderSide(color: Color(0x776ae792), width: 20.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Here are the categories',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: Colors.orange[200],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SnacksAndBeveragesProducts(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Snecks and Beverages',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: Colors.orange[200],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FreshFruitsAndVegetablesProducts(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Fresh Fruits and Vegetables',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
