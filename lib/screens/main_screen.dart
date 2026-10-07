import 'package:flutter/material.dart';
import 'package:flutter_application_bn5_swd8_s1/screens/favourites_screen.dart';
import 'package:flutter_application_bn5_swd8_s1/screens/home_screen.dart';
import 'package:flutter_application_bn5_swd8_s1/screens/profile_screen.dart';
import 'package:flutter_application_bn5_swd8_s1/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // int index = 1;

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    // FavouritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(      
      length: 3,
      child: Scaffold(
        endDrawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepOrange),
                accountName: Text("Ahmed"),
                accountEmail: Text("ahmed@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image_test.jpg"),
                ),
              ),

              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "home");
                  },
                  title: Text("Home"),
                  subtitle: Text("Click to open"),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),

              Card(
                child: ListTile(
                  title: Text("Profile"),
                  subtitle: Text("Click to open"),
                  leading: Icon(Icons.person),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),

              Card(
                child: ListTile(
                  title: Text("Search"),
                  subtitle: Text("Click to open"),
                  leading: Icon(Icons.search),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Home"),
              Tab(text: "Search"),
              Tab(text: "Profile"),
            ],
          ),
        ),

        body: TabBarView(children: screens),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: screens[index],
  //     bottomNavigationBar: BottomNavigationBar(
  //       showSelectedLabels: true,
  //       showUnselectedLabels: false,
  //       selectedItemColor: Colors.deepOrange,
  //       currentIndex: index,
  //       onTap: (newIndex) {
  //         index = newIndex;
  //         setState(() {});
  //       },
  //       type: BottomNavigationBarType.fixed,
  //       items: [
  //         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
  //         BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
  //         // BottomNavigationBarItem(
  //         //   icon: Icon(Icons.favorite),
  //         //   label: "Wishlist",
  //         // ),
  //         BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  //       ],
  //     ),
  //   );
  // }
}
