import 'package:flutter/material.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/components/food_tile.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/pages/food_details_page.dart';
import 'package:sushi_app/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Food> foodMenu = [
    Food(
        name: "Salmon",
        price: "10.00",
        imagePath: "lib/images/sushi.png",
        rating: "2.5"),
    Food(
        name: "Tuna",
        price: "12.00",
        imagePath: "lib/images/sushi.png",
        rating: "3.5"),
  ];

void navigateToFoodDetails(int index) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailsPage(food: foodMenu[index],
  ),
  ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 216, 214),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          "Tokyo",
          style: TextStyle(
              color: Colors.grey[900],
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Get 32% Promo',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    MyButton(
                      text: "Redeem",
                      onTap: () {},
                    ),
                  ],
                ),
                Image.asset(
                  'lib/images/sushi_stick.png',
                  height: 90.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for sushi...",
                hintStyle: TextStyle(color: Colors.grey[500]),
                prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 25.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
  child: Padding(
    padding: const EdgeInsets.only(left: 5.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: foodMenu.length,
      itemBuilder: (context, index) => FoodTile(
        food: foodMenu[index],
        onTap: () => navigateToFoodDetails(index),
      ),
    ),
  ),
),

          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],  
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('lib/images/sushi_three.png', height: 60),
               const  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Salmon Eggs",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '\$21.00',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                const Icon(Icons.favorite_outline, color: Colors.red, size: 28)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
