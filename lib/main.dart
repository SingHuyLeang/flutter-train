import 'package:api_train/bindings/network_binding.dart';
import 'package:api_train/common/styles/colors.dart';
import 'package:api_train/common/styles/typhographies.dart';
import 'package:api_train/utils/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

// package:
// get : state management
// dio : fech api

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialBinding: NetworkBinding(),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final networkService = Get.find<NetworkService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Obx(() {
        return Center(
          child: Text(
            networkService.isConnected.isFalse
                ? 'No Internet Connection'
                : 'Welcome to Flutter!',
            style: typographies.display(
              color: networkService.isConnected.isFalse
                  ? AppColors.denger
                  : AppColors.dark,
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toastification.show(
          title: const Text('Notifications'),
          autoCloseDuration: const Duration(seconds: 3),
          showIcon: false,
          type: ToastificationType.success,
          style: ToastificationStyle.flatColored,
        ),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
