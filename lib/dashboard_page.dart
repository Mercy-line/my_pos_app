// import 'package:flutter/material.dart';
// import 'package:my_pos_app/seat_booking_page.dart';
// import 'package:my_pos_app/parcel_booking_page.dart';
// import 'package:my_pos_app/reports_page.dart';
// import 'package:my_pos_app/payments_page.dart';

// class DashboardPage extends StatelessWidget {
//   const DashboardPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,

//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         title: const Text(
//           "Dashboard",
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         centerTitle: true,
//       ),

//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [

//             const Text(
//               "Quick Actions",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),

//             const SizedBox(height: 12),

//             // FIRST ROW
//             Row(
//               children: [
//                 // Seat Booking
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => SeatBookingPage()),
//                       );
//                     },
//                     child: _quickActionCard(Icons.event_seat, "Seat Booking"),
//                   ),
//                 ),
//                 const SizedBox(width: 15),

//                 // Parcel Booking
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => ParcelBookingPage()),
//                       );
//                     },
//                     child: _quickActionCard(Icons.local_shipping, "Parcel Booking"),
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 15),

//             // SECOND ROW
//             Row(
//               children: [
//                 // Payments
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => const PaymentsPage()),
//                       );
//                     },
//                     child: _quickActionCard(Icons.send_to_mobile_outlined, "Payments"),
//                   ),
//                 ),
//                 const SizedBox(width: 15),

//                 // Daily Reports
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (_) => const ReportsPage()),
//                       );
//                     },
//                     child: _quickActionCard(Icons.description_outlined, "Daily Reports"),
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 25),

//             const Text(
//               "Today's Summary",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),

//             const SizedBox(height: 15),

//             _summaryCard("Total Bookings", "125"),
//             const SizedBox(height: 15),
//             _summaryCard("Total Payments", "Sh 5,250"),
//             const SizedBox(height: 15),
//             _summaryCard("Total Parcels", "75"),
//           ],
//         ),
//       ),
//     );
//   }

//   // Quick Action Card
//   Widget _quickActionCard(IconData icon, String text) {
//     return Container(
//       height: 100,
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.15),
//             blurRadius: 10,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, size: 30, color: const Color(0xFF4A43EC)),
//           const SizedBox(height: 8),
//           Text(
//             text,
//             textAlign: TextAlign.center,
//             style: const TextStyle(fontWeight: FontWeight.w500),
//           ),
//         ],
//       ),
//     );
//   }

//   // Summary Card
//   Widget _summaryCard(String title, String value) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 15,
//               color: Colors.black54,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             value,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:my_pos_app/seat_booking_page.dart';
import 'package:my_pos_app/parcel_booking_page.dart';
import 'package:my_pos_app/reports_page.dart';
import 'package:my_pos_app/payments_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Dashboard",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
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

            // FIRST ROW
            Row(
              children: [
                _animatedQuickActionCard(
                  context,
                  Icons.event_seat,
                  "Seat Booking",
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) =>  SeatBookingPage()),
                    );
                  },
                ),
                const SizedBox(width: 15),
                _animatedQuickActionCard(
                  context,
                  Icons.local_shipping,
                  "Parcel Booking",
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const ParcelBookingPage()),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 15),

            // SECOND ROW
            Row(
              children: [
                _animatedQuickActionCard(
                  context,
                  Icons.send_to_mobile_outlined,
                  "Payments",
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const PaymentsPage()),
                    );
                  },
                ),
                const SizedBox(width: 15),
                _animatedQuickActionCard(
                  context,
                  Icons.description_outlined,
                  "Daily Reports",
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const ReportsPage()),
                    );
                  },
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
    );
  }

  // Animated Quick Action Card
  Widget _animatedQuickActionCard(
      BuildContext context, IconData icon, String text, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.9, end: 1.0),
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOutBack,
          builder: (context, scale, child) {
            return Transform.scale(
              scale: scale,
              child: child,
            );
          },
          child: Container(
            height: 110,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF6A4FFD), Color(0xFF43BFFF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.2),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 32, color: Colors.white),
                const SizedBox(height: 10),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Summary Card
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
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black54,
            ),
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