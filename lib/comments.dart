
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       // backgroundColor: Color(0xFFD9D9D9),
//       // backgroundColor: Color.fromARGB(255, 180, 35, 10),
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.white,
//         title: Text(
//           "Home Page",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         leading: Icon(Icons.home, size: 20, color: Colors.black),
//         actions: [
//           Icon(Icons.settings, color: Colors.amber),
//           Icon(Icons.notifications, color: Colors.deepPurple),
//         ],
//       ),
//       body: Column(
//         children: [
//           Image.network(
//             "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg",
//           ),
//           Image.asset(
//             "assets/images/image_test.jpg",
//             width: 200,
//             height: 100,
//             fit: BoxFit.fill,
//           ),
//           SizedBox(
//             width: 100,
//             height: 50,
//             child: Text(
//               "Hello World From First Flutter Project",
//               // style: TextStyle(fontFamily: "CustomFont"),
//             ),
//           ),
//           Container(
//             // width: 100,
//             // height: 60,
//             padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
//             margin: EdgeInsets.only(left: 5, top: 50),
//             // margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//             // margin: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.black,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Icon(Icons.home, color: Colors.white, size: 18),
//           ),
//           // IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
//           // FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
//           // ElevatedButton(
//           //   onPressed: () {
//           //     print("Button Clicked");
//           //   },
//           //   child: Text("Login"),
//           // ),
//           // TextButton(onPressed: () {}, child: Text("Login")),
//           // OutlinedButton(onPressed: () {}, child: Text("Login")),
//           // MaterialButton(
//           //   onPressed: () {},
//           //   color: Colors.deepOrange,
//           //   textColor: Colors.white,
//           //   child: Text("Login"),
//           // ),
//         ],
//       ),
//       // body: Container(
//       //   color: Colors.white,
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //     children: [
//       //       Text("Our Products"),
//       //       Container(
//       //         color: Colors.white,
//       //         child: Row(
//       //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //           children: [Icon(Icons.abc),Icon(Icons.notifications), Icon(Icons.ac_unit)],
//       //         ),
//       //       ),
//       //       Text("Our Services"),
//       //     ],
//       //   ),
//       // ),
//       // body: Center(child: Text("Hello World")),
//       // body: Container(
//       //   color: Colors.white,
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.spaceAround, // Top / Bottom
//       //     crossAxisAlignment: CrossAxisAlignment.center, // left / right
//       //     children: [
//       //       Text("Hello World 2"),
//       //       Text("Hello World 1 hfhgvjghvjhg vkghvk"),
//       //       Text("Hello World 3"),
//       //       Text("Hello World 4"),
//       //       Text("Hello World 5"),
//       //     ],
//       //   ),
//       // ),
//       // body: Container(
//       //   color: Colors.white,
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     crossAxisAlignment: CrossAxisAlignment.center,
//       //     children: [
//       //       Icon(Icons.home, size: 50),
//       //       Text("Hello World 2"),
//       //       Icon(Icons.notification_add),
//       //       Text("Hello World 4"),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }

      // Row(
          //   children: [
          //     Expanded(
          //       flex: 5,
          //       child: Container(color: Colors.black, height: height * .15),
          //     ),
          //     Expanded(
          //       flex: 2,
          //       child: Container(color: Colors.yellow, height: height * .15),
          //     ),
          //     Expanded(
          //       flex: 2,
          //       child: Container(
          //         color: Colors.deepOrange,
          //         height: height * .15,
          //       ),
          //     ),
          //   ],
          // ),
          // ElevatedButton(onPressed: () {}, child: Text("Login")),
          // Text(orientation),
    

     // body: Column(
      //   children: [
      //     InkWell(onTap: () {}, child: Icon(Icons.home, size: 50)),
      //     GestureDetector(onTap: () {}, child: Icon(Icons.home, size: 50)),
      //   ],
      // ),
  
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: 300,
//         height: 300,
//         color: Colors.blue,
//         child: Stack(
//           children: [
//             Align(
//               child: Container(width: 200, height: 200, color: Colors.black),
//             ),
//             Container(width: 100, height: 100, color: Colors.grey),
//             Positioned(
//               right: 100,
//               bottom: 100,
//               child: Container(width: 50, height: 50, color: Colors.yellow),
//             ),
//             // Align(
//             //   alignment: Alignment.bottomCenter,
//             //   child: Container(width: 50, height: 50, color: Colors.yellow),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }





// class HomeScreen extends StatelessWidget {
//   List<String> board = ["", "", "", "", "", "", "", "", ""];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           childAspectRatio: 1,
//         ),
//         itemCount: board.length,
//         itemBuilder: (context, index) {
//           return Card(color: Colors.grey, child: Text(board[index]));
//         },
//       ),
//     );
//   }
// }






// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool checked = false;

//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,

//             children: [
//               IconButton(
//                 onPressed: () {
//                   counter++;

//                   setState(() {});
//                 },
//                 icon: Icon(Icons.add),
//               ),
//               Text(counter.toString(), style: TextStyle(fontSize: 30)),
//               IconButton(
//                 onPressed: () {
//                   counter--;

//                   setState(() {});
//                 },
//                 icon: Icon(Icons.remove),
//               ),
//             ],
//           ),

//           Checkbox(
//             value: checked,
//             onChanged: (newValue) {
//               checked = !checked;
//               setState(() {});
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }







// class HomeScreen extends StatelessWidget {
//   bool checked = false;

//   @override
//   Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Checkbox(
    //         value: checked,
    //         onChanged: (newValue) {
    //           checked = !checked;
    //         },
    //       ),
    //     ],
    //   ),
    // );
//   }
// }









// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CarouselSlider.builder(
//         itemCount: 5,
//         itemBuilder: (context, index, realIndex) {
//           return Image.asset("assets/images/image_test.jpg");
//         },
//         options: CarouselOptions(
//           height: 250,
//           autoPlay: true,
//           viewportFraction: 1,
//           enlargeCenterPage: true,
//         ),
//       ),
//     );
//   }
// }



// class HomeScreen extends StatelessWidget {
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: names.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage("assets/images/image_test.jpg"),
//               ),
//               title: Text(names[index]),
//               subtitle: Text("Click to go"),
//               trailing: Icon(Icons.arrow_forward_ios),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }








// class HomeScreen extends StatelessWidget {
//   List<String> names = [
//     "Ahmed",
//     "Mohamed",
//     "Omar",
//     "Ali",
//     "Sara",
//     "Alaa",
//     "Ahmed",
//     "Mohamed",
//     "Omar",
//     "Ali",
//     "Sara",
//     "Alaa",
//     "Ahmed",
//     "Mohamed",
//     "Omar",
//     "Ali",
//     "Sara",
//     "Alaa",
//     "Ahmed",
//     "Mohamed",
//     "Omar",
//     "Ali",
//     "Sara",
//     "Alaa",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Column(
//           children: [
//             for (var item in names)
//               Container(
//                 margin: EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(6),
//                   color: Colors.grey,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       item,
//                       style: TextStyle(fontSize: 20, color: Colors.black),
//                     ),
//                   ],
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// class HomeScreen extends StatelessWidget {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [



//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: "Email",
//                 prefixIcon: Icon(Icons.email),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: TextField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 labelText: "Password",
//                 prefixIcon: Icon(Icons.security),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//               ),
//             ),
//           ),

//           ElevatedButton(
//             onPressed: () {
//               // Get Email + Get Password
//               final email = emailController.text;
//               final pass = passwordController.text;
//               ScaffoldMessenger.of(
//                 context,
//               ).showSnackBar(SnackBar(content: Text("$email $pass")));

//               emailController.clear();
//               passwordController.clear();
//             },
//             child: Text("Login"),
//           ),
//         ],
//       ),
//     );
//   }
// }

