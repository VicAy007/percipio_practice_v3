import 'package:material_ui/material_ui.dart';
import 'package:percipio_practice_3/screens/categories.dart';

class MyHomePage extends StatelessWidget {
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
            height: 400.0,
            width: 300.0,
            margin: const EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXtIG556PkLFSl02KoZ8qdQlPISYdNviOtE21BmtMisun8-2IZShT9b-Q&s=10',
                ),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30),
            alignment: Alignment.center,
            child: const Text(
              'Welcome to the Insta Store!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Verdana',
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              backgroundColor: Colors.orange[900],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyCategoriesPage()),
              );
            },

            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Shop Now !',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
