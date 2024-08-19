import 'package:flutter/material.dart';
import 'package:shoppify/seller/viewproduct.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'name': 'Product 1',
        'description': 'This is a short description of product 1.',
        'price': 99.99,
        'image': 'assets/images/img1.jpg'
      },
      {
        'name': 'Product 2',
        'description': 'This is a short description of product 2.',
        'price': 79.99,
        'image': 'assets/images/img2.jpg'
      },
      {
        'name': 'Product 3',
        'description': 'This is a short description of product 3.',
        'price': 49.99,
        'image': 'assets/images/img3.jpg'
      },
      {
        'name': 'Product 4',
        'description': 'This is a short description of product 4.',
        'price': 49.99,
        'image': 'assets/images/1.jfif'
      },
      {
        'name': 'Product 5',
        'description': 'This is a short description of product 5.',
        'price': 49.99,
        'image': 'assets/images/2.jfif'
      },
      {
        'name': 'Product 6',
        'description': 'This is a short description of product 6.',
        'price': 49.99,
        'image': 'assets/images/3.jfif'
      },
      {
        'name': 'Product 7',
        'description': 'This is a short description of product 7.',
        'price': 49.99,
        'image': 'assets/images/4.jfif'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text('Dashboard'),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 3 / 5,
          ),
          itemBuilder: (context, index) {
            return _buildProductCard(
              products[index]['name'] as String,
              products[index]['description'] as String,
              products[index]['price'] as double,
              products[index]['image'] as String,
              context,
            );
          },
        ),
      ),
    );
  }

  Widget _buildProductCard(String name, String description, double price,
      String image, BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(image, fit: BoxFit.contain),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Price: \$${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.green[500],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        content: Text('$name added to cart!'),
                        duration: Duration(seconds: 2),
                      ),
                    );

                   
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Viewproduct()),
                    // );
                  },
                  child: Icon(Icons.shopping_cart),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
