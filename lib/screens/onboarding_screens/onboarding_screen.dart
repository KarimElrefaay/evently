import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool isDark = false;
  String language = "EN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : const Color(0xFFF5F9FF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Image.asset("assets/images/Evently_onboarding.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  )),
                ],
              ),

              const SizedBox(height: 30),

              Expanded(
                child: Image.asset(
                  "assets/images/onboarding1.png",
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 20),


              const Text(
                "Personalize Your Experience",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5A5AED)),
              ),
              const SizedBox(height: 8),
              Text(
                "Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isDark ? Colors.white70 : Colors.black87,
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Language",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Color(0xFF5A5AED))),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.flag_circle_rounded, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            language = "EN";
                          });
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.flag_circle_rounded, color: Colors.green),
                        onPressed: () {
                          setState(() {
                            language = "AR";
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Theme",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Color(0xFF5A5AED))),
                  Switch(
                    value: isDark,
                    activeColor: const Color(0xFF5A5AED),
                    onChanged: (val) {
                      setState(() {
                        isDark = val;
                      });
                    },
                  )
                ],
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5A5AED),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {

                    Navigator.pushReplacementNamed(context, "/home");
                  },
                  child: const Text(
                    "Let's Start",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
