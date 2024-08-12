import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 212, 211),
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation: 0,
        leading:Icon(Icons.menu, 
        color: Colors.grey[900],),
        ),
    );
  
  }
}