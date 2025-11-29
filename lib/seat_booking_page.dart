import 'package:flutter/material.dart';

class SeatBookingPage extends StatefulWidget {
  @override
  _SeatBookingPageState createState() => _SeatBookingPageState();
}

class _SeatBookingPageState extends State<SeatBookingPage> {
  List<int> selectedSeats = [];
  List<int> bookedSeats = [1,2, 4, 7, 8, 9, 12, 13,14]; 

  double seatPrice = 250;

  void toggleSeat(int seat) {
    if (bookedSeats.contains(seat)) return;

    setState(() {
      selectedSeats.contains(seat)
          ? selectedSeats.remove(seat)
          : selectedSeats.add(seat);
    });
  }

  @override
  Widget build(BuildContext context) {
    double total = selectedSeats.length * seatPrice;

    return Scaffold(
      appBar: AppBar(
        title: Text("Seat Booking"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            
            Text("Trip Details", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            Row(
              children: [
                Expanded(child: dropdown("Select Vehicle")),
                SizedBox(width: 10),
                Expanded(child: dropdown("Select Route")),
              ],
            ),

            SizedBox(height: 10),

            Row(
              children: [
                Expanded(child: inputBox("mm/dd/yyyy", Icons.date_range)),
                SizedBox(width: 10),
                Expanded(child: dropdown("Time")),
              ],
            ),

            SizedBox(height: 15),

            
            Center(
              child: Column(
                children: [
                  Text("Amount to Pay"),
                  SizedBox(height: 5),
                  Text(
                    "Sh $total",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            
            Text("Select Seats (${selectedSeats.length} selected)"),
            SizedBox(height: 8),

            Row(
              children: [
                legend(Colors.white, "Available"),
                legend(Colors.blue, "Selected"),
                legend(Colors.grey, "Booked"),
              ],
            ),

            SizedBox(height: 12),

            
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: 14,
              itemBuilder: (context, index) {
                int seat = index + 1;
                bool selected = selectedSeats.contains(seat);
                bool booked = bookedSeats.contains(seat);

                Color color = Colors.white;
                if (selected) color = Colors.blue;
                if (booked) color = Colors.grey;

                return GestureDetector(
                  onTap: () => toggleSeat(seat),
                  child: Container(
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              offset: Offset(2, 2))
                        ]),
                    child: Center(
                      child: Text(
                        seat.toString(),
                        style: TextStyle(
                            color:
                            booked || selected ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                );
              },
            ),

            SizedBox(height: 20),

            
            Text("Passenger Details",
                style: TextStyle(fontWeight: FontWeight.bold)),

            SizedBox(height: 10),

            textField("First Name"),
            textField("Last Name"),
            textField("Phone Number"),
            textField("ID Number"),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Color (0xff4a43ec),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  print("Seats: $selectedSeats");
                },
                child: Text(
                  "Proceed to Payment",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    
     bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF4A43EC),
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Dashboard"),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_seat),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: "Parcel",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    
    );
  }

  

  Widget dropdown(String hint) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text(hint),
          isExpanded: true,
          items: [],
          onChanged: (value) {},
        ),
      ),
    );
  }

  Widget inputBox(String hint, IconData icon) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget textField(String label) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget legend(Color color, String text) {
    return Expanded(
      child: Row(
        children: [
          Container(width: 18, height: 18, color: color),
          SizedBox(width: 6),
          Text(text)
        ],
      ),
    );
  }
}
