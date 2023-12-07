import 'package:alvas_management/views/widgets/buttons.dart';
import 'package:alvas_management/views/widgets/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 5,),
                Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.varelaRound(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Image.network(
                  'https://alvascollege.com/wp-content/uploads/2019/03/logo.png',
                  width: 140,
                ),
                CustomTextField(
                  name: "Email",
                  icon: Icons.email,
                  errorMessage: null,
                  controller: _emailController,
                ),
                CustomTextField(
                  name: "Password",
                  hideText: true,
                  icon: Icons.password,
                  errorMessage: null,
                  controller: _passwordController,
                  passwordIcon: Icons.remove_red_eye_rounded,
                ),
                Align(
                  heightFactor: 0,
                  alignment:const Alignment(0.8, 0),
                  child: RichText(text: TextSpan(text: 'Forgot Password' , style: GoogleFonts.varelaRound(color: Colors.blue))),
                ),
                CustomButtons(
                  onPressed: () {},
                  color: Colors.orange,
                  title: "Login",
                  fontColor: Colors.white,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "New User?",
                        style: GoogleFonts.varelaRound(color: Colors.orange),
                      ),
                      TextSpan(
                          text: "\tRegister",
                          style: GoogleFonts.varelaRound(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                          ..onTap = () => Navigator.pushNamed(context, '/register'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
