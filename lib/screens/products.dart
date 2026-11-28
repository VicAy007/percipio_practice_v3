import 'package:material_ui/material_ui.dart';

class Product {
  final String image;
  final String title;

  Product({required this.image, required this.title});
}

List<Product> _snacksAndBeverages = [
  Product(image: 'images/cookies.jpeg', title: 'Cookies'),
  Product(image: 'images/iced_tea.jpg', title: 'Iced Tea'),
  Product(image: 'images/lemonade.jpg', title: 'Lemonade'),
  Product(image: 'images/orange_juice.jpg', title: 'Orange Juice'),
];

List<Product> _freshFruitsAndVegetables = [
  Product(image: 'images/apples.jpg', title: 'Apples'),
  Product(image: 'images/banana.jpg', title: 'Bananas'),
  Product(image: 'images/beans.jpg', title: 'Beans'),
  Product(image: 'images/carrots.jpg', title: 'Carrots'),
];

Map<String, List<Product>> productsMap = {
  'snacks_beverages': _snacksAndBeverages,
  'fruits_vegetables': _freshFruitsAndVegetables,
};

class Products extends StatelessWidget {
  final dynamic args;
  const Products({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    var category = args['category'] as String;
    var products = productsMap[category] ?? [];

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
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: ((context, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Colors.green[100],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(products[index].image),
                    ),
                    title: Text(
                      products[index].title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      print(products[index].title);
                    },
                  ),
                );
              }),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
