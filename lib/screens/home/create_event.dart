import 'package:flutter/material.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Create Event",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/sport_card.png",
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCategory("Book Club", Icons.book),
                _buildCategory("Sport", Icons.sports_soccer),
                _buildCategory("Birthday", Icons.cake),
              ],
            ),
            const SizedBox(height: 16),

            // Title
            const Text("Title"),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "We Are Going To Play Football",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Description
            const Text("Description"),
            const SizedBox(height: 8),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Write description...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Event Date
            Row(
              children: const [
                Icon(Icons.event),
                SizedBox(width: 8),
                Text("Event Date"),
                Spacer(),
                Text("22/11/2024",
                    style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 16),

            // Event Time
            Row(
              children: const [
                Icon(Icons.access_time),
                SizedBox(width: 8),
                Text("Event Time"),
                Spacer(),
                Text("12:22 PM",
                    style: TextStyle(color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 16),

            // Location
            const Text("Location"),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Cairo, Egypt",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 24),

            //  Add Event
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Add Event"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 6),
          Text(label, style: const TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}
