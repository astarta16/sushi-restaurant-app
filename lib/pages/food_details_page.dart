import 'package:flutter/material.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/theme/colors.dart'; // Assuming this is where primaryColor is defined

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantityCount = 0;

  void decrementQuantity() {
    if (quantityCount > 0) {
      setState(() {
        quantityCount--;
      });
    }
  }

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  Image.asset(widget.food.imagePath, height: 200),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange[400],
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "${widget.food.rating}",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.food.name,
                    style: const TextStyle(fontSize: 28),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Sushi is traditionally made with medium-grain white rice, though it can be prepared with brown rice or short-grain rice. It is very often prepared with seafood, such as squid, eel, yellowtail, salmon, tuna, or imitation crab meat.",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 14,
                      height: 2,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: primaryColor),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${widget.food.price}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove, color: Colors.white),
                      onPressed: decrementQuantity,
                    ),
                    Text(
                      '$quantityCount',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: incrementQuantity,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
