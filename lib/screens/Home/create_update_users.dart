import 'package:flutter/material.dart';

class CreateUpdateUser extends StatefulWidget {
  const CreateUpdateUser({super.key});

  @override
  State<CreateUpdateUser> createState() => _CreateUpdateUserState();
}

class _CreateUpdateUserState extends State<CreateUpdateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("New Users"),
        elevation: 3,
      ),
       body: Container(
         width: 100,
         height: 100,
         color: Colors.teal,
       ),
    );
  }
}
