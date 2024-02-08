import 'package:coffee_shop_app/components/coffee_tile.dart';
import 'package:coffee_shop_app/models/coffee.dart';
import 'package:coffee_shop_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class likePage extends StatefulWidget {
  const likePage({super.key});

  @override
  State<likePage> createState() => _likePageState();
}

class _likePageState extends State<likePage> {
  
    void addToCard(Coffee coffee) {
    //add to card
    Provider.of<CoffeeShop>(context, listen: false).addLikeToCard(coffee);
    //let user know it add been done successfully
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added to Like!"),
      ),
    );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading

              const Text(
                "Your Favorite",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 25),
              // list of card items
              Expanded(child: ListView.builder(itemCount: value.userCard.length, itemBuilder: (context, index) {
                
                Coffee eachCoffee = value.userCard[index];
                //get individual coffee cart items

                //return coffee

              })),
            ],
          ),
        ),
      ),
    );
  }
}