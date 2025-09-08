// import 'package:flutter/material.dart';
//
// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});
//
//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _controller = PageController();
//   int _currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _controller,
//         onPageChanged: (index) {
//           setState(() {
//             _currentPage = index;
//           });
//         },
//         children: [
//           buildPage(
//           image: "assets/images/evently_logo",
//           title: "Welcome to Evently",
//           description: "Discover and book amazing events",
//
//
//         ]
//
//       ),
//     );
//   }
// }
//
//
