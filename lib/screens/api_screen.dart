import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  @override
  void initState() {
    getProducts();
    super.initState();
  }

  bool isLoading = true;

  final dio = Dio(BaseOptions(baseUrl: "https://dummyjson.com/"));
  List products = [];
  void getProducts() async {
    final response = await dio.get("products");
    if (response.statusCode == 200) {
      Map map = response.data;
      products = map["products"];
    }
    isLoading = false;
    setState(() {});
  }

  // Authentication / Auth + Access Token + Refresh token
  // Pass / Send Data Between Screens / Widgets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        products[index]["thumbnail"],
                      ),
                    ),
                    title: Text(products[index]["title"]),
                  ),
                );
              },
              itemCount: products.length,
            ),
    );
  }
}
