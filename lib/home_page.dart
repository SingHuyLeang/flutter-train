import 'package:flutter/material.dart';
import 'package:flutter_train/components/custom_appbar.dart';
import 'package:flutter_train/components/horizontal_view.dart';
import 'package:flutter_train/constants/respone_size.dart';
import 'package:flutter_train/data/product.dart';

import 'components/input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final message = TextEditingController();

  final String firstName = "Simone";
  final String userProfile = "assets/images/profile.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Custom Appbar
              CustomAppBar(
                firstName: firstName,
                userProfile: userProfile,
              ),
              // Custom Body
              SizedBox(height: Response.height(context, 32)),
              // - search field -
              Input(
                controller: TextEditingController(),
                hint: "Find you want",
                icon: "assets/images/search.png",
              ),
              SizedBox(height: Response.height(context, 32)),
              // New Product
              HorizontalView(
                title: "New",
                products: [
                  Product(
                    name: "Cappuccino Cappuccino",
                    price: 3.99,
                    image: "assets/images/cappuccino.jpg",
                  ),
                  Product(
                    name: "Expresso",
                    price: 2.99,
                    image: "assets/images/expresso.jpg",
                  ),
                  Product(
                    name: "Mocka JU",
                    price: 2.99,
                    image: "assets/images/mug.jpg",
                  ),
                  Product(
                    name: "Cappuccino",
                    price: 3.99,
                    image: "assets/images/cappuccino.jpg",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
