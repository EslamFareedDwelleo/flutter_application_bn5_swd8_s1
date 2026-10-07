import 'package:flutter/material.dart';
import 'package:flutter_application_bn5_swd8_s1/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pushNamed(context, "profile");
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (_) => ProfileScreen()),
            // );
          },
          child: Text("Open Profile"),
        ),
      ),
    );
  }
}





// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     String orientation = MediaQuery.of(context).orientation.name;

//     return Scaffold(
//       appBar: AppBar(title: Text("Facebook")),
//       body: Column(
//         children: [
//           CarouselSlider.builder(
//             options: CarouselOptions(
//               autoPlay: true,
//               enlargeCenterPage: true,
//               viewportFraction: 1,
//             ),
//             itemBuilder: (context, index, realIndex) {
//               return Image.asset("assets/images/image_test.jpg", height: 200);
//             },
//             itemCount: 5,
//           ),

//           SizedBox(
//             height: 60,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Container(
//                   padding: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.deepOrange),
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Text("Category"),
//                 );
//               },
//               itemCount: 15,
//             ),
//           ),

//           Expanded(
//             child: ListView.builder(
//               // shrinkWrap: true,
//               // physics: NeverScrollableScrollPhysics(),
//               itemBuilder: (context, index) {
//                 return Card(
//                   child: ListTile(
//                     leading: Icon(Icons.home),
//                     trailing: Icon(Icons.arrow_forward_ios),
//                     title: Text("Item $index"),
//                   ),
//                 );
//               },
//               itemCount: 10,
//             ),
//           ),

//         ],
//       ),
//    );
//   }
// }

