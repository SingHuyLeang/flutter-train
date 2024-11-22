import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trains/getx/counter.dart';
import 'package:trains/pages/my_second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final it = Get.put(CounteGetx());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.adaptive.arrow_forward),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const MySecondPage(title: "My Second Page"),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${it.counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => it.incrementCounter(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    ),);
  }
}
