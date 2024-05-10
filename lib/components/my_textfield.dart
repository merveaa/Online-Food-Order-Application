import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText; //şifrenin gizliliği için

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText, //metin girişini gizlemek için kullanılır
        decoration: InputDecoration(
          //normal hali için
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary)),
          //input girerkenki hali için
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary)),
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
