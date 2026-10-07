import 'package:flutter/material.dart';
// import 'package:flutter_application_bn5_swd8_s1/core/helpers/shared_helper.dart';
import 'package:flutter_application_bn5_swd8_s1/core/style/app_theme.dart';
import 'package:flutter_application_bn5_swd8_s1/models/user_model.dart';
import 'package:flutter_application_bn5_swd8_s1/screens/hive_screen.dart';
import 'package:flutter_application_bn5_swd8_s1/screens/users_screen.dart';
// import 'package:flutter_application_bn5_swd8_s1/screens/shared_pref_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(UserModelAdapter());

  await Hive.openBox<UserModel>("usersBox");

  // await Hive.openBox("userBox");
  // await Hive.openBox("favouritesBox");

  // await SharedHelper.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "XO",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: UsersScreen(),
      // routes: {
      //   "splash": (_) => SplashScreen(),
      //   "login": (_) => LoginScreen(),
      //   "main": (_) => MainScreen(),
      //   "home": (_) => HomeScreen(),
      //   "profile": (_) => ProfileScreen(),
      // },
      // initialRoute: "splash",
      // home: SharedPrefScreen(),
    );
  }
}

//? Done
//? Widget
//? Stateless Widget / Statefull widget
//? Material App
//? Scaffold
//? App Bar
//? Text
//? Icon
//? Center
//? Container
//? Sized Box
//? Column
//? Row
//? Buttons
//? Pubspec.yaml
//? assets
//? image widgets
//? fonts
//? Text Field + TextFormField
//? Listview
//? single child Scroll view
//? Statefullwidget life cycle
//? Set State
//? GridView

// Todo
// Stack
// GestureDetector + InkWell
// Expanded
// Flex
// Media Query
// Themes



// BottomNavigationBar
// TabBar
// Navigation