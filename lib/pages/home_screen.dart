import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trains/components/input_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Home Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Simple form data',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              InputText(
                controller: TextEditingController(),
                hint: "Enter title",
              ),
              const SizedBox(height: 16),
              InputText(
                controller: TextEditingController(),
                hint: "Enter content",
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: CupertinoButton(
                  color: Colors.black,
                  onPressed: () {},
                  child: const Text("Save", style: TextStyle(fontSize: 16)),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Simple List data',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              ...List.generate(
                10,
                (index) => Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.02),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Item title',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800],
                            ),
                          ),
                          const Row(
                            children: [
                              Icon(Icons.edit, color: Colors.blue),
                              SizedBox(width: 15),
                              Icon(Icons.delete_rounded, color: Colors.pink),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'Item content',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
