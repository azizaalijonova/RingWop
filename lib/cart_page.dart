import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List<CartItemData> cartItems = [
    CartItemData('Ring 4', 'https://example.com/ring4_image.jpg'),
    CartItemData('Ring 5', 'https://example.com/ring5_image.jpg'),
    CartItemData('Ring 6', 'https://example.com/ring6_image.jpg'),
  ]; // Example list of items in the cart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return CartItem(item: cartItems[index]);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  'Total: \$100'), // Replace with your logic to calculate the total
              ElevatedButton(
                onPressed: () {
                  // Implement checkout functionality
                },
                child: Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItemData {
  final String itemName;
  final String imageUrl;

  CartItemData(this.itemName, this.imageUrl);
}

class CartItem extends StatelessWidget {
  final CartItemData item;

  const CartItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.itemName),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(item.imageUrl),
      ),
      // Add more details or customization as needed
    );
  }
}
