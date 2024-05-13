import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? ontap;
  final String text;
  const MyButton({super.key, this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80),
        child: Container(
          height: 50,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context)
                      .colorScheme
                      .inversePrimary
                      .withOpacity(0.3), // Gölge rengi
                  spreadRadius: 3, // Gölgenin yayılma yarıçapı
                  blurRadius: 5, // Gölgenin bulanıklık yarıçapı
                  offset: Offset(0, 3), // Gölgenin konumu (x, y)
                ),
              ],
              borderRadius: BorderRadius.circular(50),
              color: Theme.of(context).colorScheme.secondary),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
