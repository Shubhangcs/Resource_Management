import 'package:alvas_management/views/widgets/buttons.dart';
import 'package:alvas_management/views/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _usnController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'Register',
                  style: GoogleFonts.varelaRound(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomTextField(
                name: "First Name",
                icon: Icons.abc,
                controller: _firstNameController,
              ),
              CustomTextField(
                name: "Last Name",
                icon: Icons.abc,
                controller: _lastNameController,
              ),
              CustomTextField(
                name: "USN",
                icon: Icons.perm_identity_rounded,
                controller: _usnController,
              ),
              CustomTextField(
                name: "Email",
                icon: Icons.mail,
                controller: _emailController,
              ),
              CustomTextField(
                name: "Password",
                hideText: true,
                icon: Icons.password,
                controller: _passwordController,
                passwordIcon: Icons.remove_red_eye_rounded,
              ),
              CustomButtons(
                onPressed: () {},
                color: Colors.orange,
                title: "Register",
                fontColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
