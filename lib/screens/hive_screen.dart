import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveScreen extends StatefulWidget {
  const HiveScreen({super.key});

  @override
  State<HiveScreen> createState() => _HiveScreenState();
}

class _HiveScreenState extends State<HiveScreen> {
  final box = Hive.box("userBox");

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: controller),
            ElevatedButton(
              onPressed: () async {
                await box.put("name", controller.text);
                controller.clear();
                // await box.put("email", "ahmed@gmail.com");
                // await box.put("pass", "123456");
              },
              child: Text("Save Name"),
            ),
            ElevatedButton(
              onPressed: () {
                String name = box.get("name", defaultValue: "no name");
                controller.text = name;
                // String name = box.get("name", defaultValue: "no name");
                // String name = box.get("name", defaultValue: "no name");
              },
              child: Text("Get Name"),
            ),
          ],
        ),
      ),
    );
  }
}
