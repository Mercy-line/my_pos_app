import 'package:flutter/material.dart';
import 'package:my_pos_app/Payments_page.dart';
import 'package:my_pos_app/seat_booking_page.dart';
import 'package:my_pos_app/parcel_boking_page.dart';
import 'package:my_pos_app/reports_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: const Text(
          "DashBoard",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Quick Actions",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SeatBookingPage(),
                      ),
                    );
                  },
                  child: _quickActionCard(Icons.event_seat, "Seat Booking"),
                ),
                const SizedBox(width: 15),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ParcelBookingPage(),
                      ),
                    );
                  },
                  child: _quickActionCard(
                    Icons.local_shipping,
                    "Parcel Booking",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentsPage()),
                    );
                  },
                  child: _quickActionCard(
                    Icons.send_to_mobile_outlined,
                    "Payments",
                  ),
                ),

                const SizedBox(width: 15),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportsPage()),
                    );
                  },
                  child: _quickActionCard(
                    Icons.description_outlined,
                    "Daily Reports",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              "Today's Summary",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            _summaryCard("Total Bookings", "125"),
            const SizedBox(height: 15),
            _summaryCard("Total Payments", "Sh 5,250"),
            const SizedBox(height: 15),
            _summaryCard("Total Parcels", "75"),
          ],
        ),
      ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xFF4A43EC),
          unselectedItemColor: Colors.black54,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.menu), 
            label: "Dashboard"),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_seat),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_shipping),
              label: "Parcel",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), 
            label: "Profile"),
          ],
        ),
    );
  }

  Widget _quickActionCard(IconData icon, String text) {
    return Expanded(
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: const Color(0xFF4A43EC)),
            const SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Widget _summaryCard(String title, String value) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 15, color: Colors.black54),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
