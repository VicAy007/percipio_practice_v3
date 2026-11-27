import 'package:material_ui/material_ui.dart';

class ProductV2 {
  final String image;
  final String title;

  ProductV2({required this.image, required this.title});
}

List<ProductV2> snacksAndBeverages = [
  ProductV2(image: 'images/cookies.jpeg', title: 'Cookies'),
  ProductV2(image: 'images/iced_tea.jpg', title: 'Iced Tea'),
  ProductV2(image: 'images/lemonade.jpg', title: 'Lemonade'),
  ProductV2(image: 'images/orange_juice.jpg', title: 'Orange Juice'),
];

class SnacksAndBeveragesProductsV2 extends StatelessWidget {
  const SnacksAndBeveragesProductsV2({super.key});

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

List<ProductV2> freshFruitsAndVegetables = [
  ProductV2(image: 'images/apples.jpg', title: 'Apples'),
  ProductV2(image: 'images/banana.jpg', title: 'Bananas'),
  ProductV2(image: 'images/beans.jpg', title: 'Beans'),
  ProductV2(image: 'images/carrots.jpg', title: 'Carrots'),
];

class FreshFruitsAndVegetablesProductsV2 extends StatelessWidget {
  const FreshFruitsAndVegetablesProductsV2({super.key});

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
