import 'package:material_ui/material_ui.dart';

class Product {
  final String image;
  final String title;

  Product({required this.image, required this.title});
}

List<Product> snacksAndBeverages = [
  Product(image: 'images/cookies.jpeg', title: 'Cookies'),
  Product(image: 'images/iced_tea.jpg', title: 'Iced Tea'),
  Product(image: 'images/lemonade.jpg', title: 'Lemonade'),
  Product(image: 'images/orange_juice.jpg', title: 'Orange Juice'),
];

class SnacksAndBeveragesProducts extends StatelessWidget {
  const SnacksAndBeveragesProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Insta Store'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: snacksAndBeverages.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            color: Colors.green[100],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(snacksAndBeverages[index].image),
              ),
              title: Text(
                snacksAndBeverages[index].title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print(snacksAndBeverages[index].title);
              },
            ),
          );
        },
      ),
    );
  }
}

List<Product> freshFruitsAndVegetables = [
  Product(image: 'images/apples.jpg', title: 'Apples'),
  Product(image: 'images/banana.jpg', title: 'Bananas'),
  Product(image: 'images/beans.jpg', title: 'Beans'),
  Product(image: 'images/carrots.jpg', title: 'Carrots'),
];

class FreshFruitsAndVegetablesProducts extends StatelessWidget {
  const FreshFruitsAndVegetablesProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Insta Store'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.green[100],
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                  freshFruitsAndVegetables[index].image,
                ),
              ),
              title: Text(
                freshFruitsAndVegetables[index].title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print(freshFruitsAndVegetables[index].title);
              },
            ),
          );
        }),
      ),
    );
  }
}
