import 'package:flutter/material.dart';

import '../utils/global.colors.dart';
import '../utils/widgets/button.global.dart';
import '../utils/widgets/social.login.dart';
import '../utils/widgets/text.form.global.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Logo',
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Create Your Account',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 35),

                // Email Input
                TextFormGlobal(
                  controller: emailController, 
                  text: 'Email', 
                  obscure: false, 
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 35),
                
                // Password Input
                TextFormGlobal(
                  controller: passwordController, 
                  text: 'Password', 
                  textInputType: TextInputType.text, 
                  obscure: true
                ),

                const SizedBox(height: 35),
                
                // Password Input
                TextFormGlobal(
                  controller: confirmpasswordController, 
                  text: 'Confirm Password', 
                  textInputType: TextInputType.text, 
                  obscure: true
                ),

                const SizedBox(height: 35),
                const ButtonGlobal(),
                const SizedBox(height: 75),
                const SocialLogin(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}