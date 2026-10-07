import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 1)
class ProductModel {
  @HiveField(0)
  String name;

  @HiveField(1)
  double price;

  ProductModel({required this.name, required this.price});
}
