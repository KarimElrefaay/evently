import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(220),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: const BoxDecoration(
            color: Color(0xFF5A5AED),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(Icons.wb_sunny_outlined,
                        color: Colors.white, size: 22),
                    const SizedBox(width: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text("EN",
                          style: TextStyle(
                              color: Color(0xFF5A5AED),
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                const Text("Welcome Back ✨",
                    style: TextStyle(color: Colors.white70, fontSize: 16)),
                const Text("Route Academy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Row(
                  children: const [
                    Icon(Icons.location_on, color: Colors.white70, size: 18),
                    SizedBox(width: 4),
                    Text("Cairo, Egypt",
                        style: TextStyle(color: Colors.white70)),
                  ],
                ),

                const SizedBox(height: 12),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildFilterChip("All", true),
                      _buildFilterChip("Sport", false),
                      _buildFilterChip("Birthday", false),
                      _buildFilterChip("Meeting", false),
                      _buildFilterChip("Exhibition", false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
              Image.asset("assets/images/birthday_card.png",
                width: 361 ,
                height: 230,
                 fit: BoxFit.cover,

            ),
            SizedBox(height: 15),

            Image.asset("assets/images/meeting_card.png",
              width: 361 ,
              height: 230,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15),
            Image.asset("assets/images/third_card.png",
              width: 320 ,
              height: 200,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildFilterChip(String label, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
          ),
        ),
        backgroundColor: selected ? const Color(0xFF5A5AED) : Colors.grey[200],
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
    );
  }

  static Widget _buildEventCard({
    required String date,
    required String title,
    required String subtitle,
    required String image,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              image,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.black.withOpacity(0.4),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(date,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ),
                const SizedBox(height: 8),

                Text(title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold)),

                const SizedBox(height: 4),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(subtitle,
                          style: const TextStyle(
                              color: Colors.white70, fontSize: 14)),
                    ),
                    Icon(Icons.favorite_border,
                        color: Colors.white, size: 22),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
