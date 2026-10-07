import 'package:flutter/material.dart';
import 'package:flutter_application_bn5_swd8_s1/core/components/default_text_field.dart';
import 'package:flutter_application_bn5_swd8_s1/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  List<UserModel> users = [];

  final nameController = TextEditingController();
  final ageController = TextEditingController();

  final box = Hive.box<UserModel>("usersBox");

  void getData() {
    users = box.values.toList();
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              DefaultTextField(
                controller: nameController,
                icon: Icons.person,
                label: "Name",
              ),
              DefaultTextField(
                controller: ageController,
                icon: Icons.person_2,
                label: "Age",
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                onPressed: () async {
                  await box.add(
                    UserModel(
                      age: int.parse(ageController.text),
                      name: nameController.text,
                    ),
                  );

                  ageController.clear();
                  nameController.clear();
                  getData();
                  setState(() {});
                },
                child: Text("Save User"),
              ),

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onLongPress: () async {
                        await box.deleteAt(index);
                        getData();
                        setState(() {});
                      },
                      title: Text(users[index].name),
                      subtitle: Text(users[index].age.toString()),
                    ),
                  );
                },
                itemCount: users.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
