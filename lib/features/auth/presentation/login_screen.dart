import 'package:flutter/material.dart';
import '../data/auth_service.dart';
import 'widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo //
            Image.asset("assets/images/Logo.png", width: 140),

            const SizedBox(height: 30),

            // Email //
            CustomTextField(
              controller: emailController,
              hintText: "Email",
              icon: Icons.email_outlined,
              obscure: false,
            ),

            const SizedBox(height: 16),

            // Password
            CustomTextField(
              controller: passwordController,
              hintText: "Password",
              icon: Icons.lock_outline,
              obscure: true,
            ),

            const SizedBox(height: 10),

            // Forget password //
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // TODO: Navigate to Forgot Password
                },
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Login button //
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () async {
                  // TODO: Login with email & password
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Create account //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t Have Account ? "),
                GestureDetector(
                  onTap: () {
                    // TODO: Navigate to Create Account
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            //    OR Divider  //
            Row(
              children: const [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("Or"),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),

            const SizedBox(height: 30),

            // Google login button
            GestureDetector(
              onTap: () async {
                final user = await _authService.signInWithGoogle();
                if (user != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Welcome ${user.displayName}!")),
                  );
                }
              },
              child: Container(
                padding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 95),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.blue),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google_icon.png",
                      height: 24,
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      "Login With Google",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            //اللغه
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {

                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(
                      "assets/images/Flag_of_the_United_States.png",
                    ),
                  )
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {

                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(
                      "assets/images/Flag_of_Egypt.png",
                    ),
                  )
                ),
              ],
            ),

            const SizedBox(height: 40),


          ],
        ),
      ),
    );
  }
}
