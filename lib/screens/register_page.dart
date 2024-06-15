import 'package:flutter/material.dart';
import 'package:online_order/components/my_button.dart';
import 'package:online_order/components/my_textfield.dart';
import 'package:online_order/screens/home_page.dart';

class RegisterPage extends StatefulWidget {
  final void Function() onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  void register() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.account_circle_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(
              height: 25,
            ),
            //app slogan
            Text(
              "Let's create a new account! ",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            SizedBox(
              height: 25,
            ),
            //email
            MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false),
            SizedBox(
              height: 10,
            ),
            //password
            MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            SizedBox(
              height: 10,
            ),
            //confirm password
            MyTextField(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                obscureText: true),

            //login button
            MyButton(
              text: "Sign Up",
              ontap: register,
            ),
            //login now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
