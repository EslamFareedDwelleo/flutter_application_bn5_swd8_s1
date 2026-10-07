// import 'package:flutter/material.dart';
// import 'package:flutter_application_bn5_swd8_s1/core/helpers/shared_helper.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPrefScreen extends StatefulWidget {
//   const SharedPrefScreen({super.key});

//   @override
//   State<SharedPrefScreen> createState() => _SharedPrefScreenState();
// }

// class _SharedPrefScreenState extends State<SharedPrefScreen> {
//   final controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextField(controller: controller),
//           ElevatedButton(
//             onPressed: () async {
//               // await SharedHelper.prefs.setString("name", controller.text);

//               SharedHelper.saveName(controller.text);
//               controller.clear();
//             },
//             child: Text("Save"),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               String name = SharedHelper.prefs.getString("name") ?? "No Name";
//               controller.text = name;
//             },
//             child: Text("Get"),
//           ),
//           ElevatedButton(
//             onPressed: () async {
//               await SharedHelper.prefs.remove("name");
//               controller.clear();
//             },
//             child: Text("Remove"),
//           ),
//         ],
//       ),
//     );
//   }
// }
