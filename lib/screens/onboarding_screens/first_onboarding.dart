import 'package:flutter/material.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Evently_onboarding1.png",
                    width: 150,
                    height: 100,
                    fit: BoxFit.contain,

                    ),

                 ],
               ),

              // Illustration
              Center(
                child: Image.asset(
                  "assets/images/first_onboarding.png",
                  height: 250,
                ),
              ),

              // Texts
              Column(
                children: const [
                  Text(
                    "Find Events That Inspire You",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3B4CE0),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Dive into a world of events crafted to fit your unique interests. "
                        "Whether you're into live music, art workshops, professional networking, "
                        "or simply discovering new experiences, we have something for everyone.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),

          Row(
            children: [
              const Spacer(),

              // Dots
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),

              const Spacer(),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(12),
                ),
                onPressed: () {},
                child: const Icon(Icons.arrow_forward, color: Colors.white),
              ),
            ],
            ),

          ],
          ),
        ),
      ),
    );
  }
}
