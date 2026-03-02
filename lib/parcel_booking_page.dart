import 'package:flutter/material.dart';

class ParcelBookingPage extends StatelessWidget {
  const ParcelBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double totalAmount = 0.0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Parcel Booking"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=> Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding:const EdgeInsets.symmetric(horizontal: 25, vertical:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text("Register New Parcel", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

    Text("Vehicle",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Select Vehicle",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),

SizedBox(height:20),


    Text("Sender Name",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Enter Full Name of the Sender",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),


SizedBox(height:20),


    Text("Sender Phone Number",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Enter Phone Number of the sender",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),


SizedBox(height:20),


    Text("Origin",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Select where the parcel is coming from",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),


SizedBox(height:20),


    Text("Receiver Name",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Enter Full Name of the Receiver",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),

SizedBox(height:20),


    Text("Receiver Phone Number",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Enter Phone Number of the Receiver",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),

SizedBox(height:20),


    Text("Destination",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Select where the parcel is going to",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),

SizedBox(height:20),


    Text("Parcel Details",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Enter the description of the parcel",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),

SizedBox(height:20),


    Text("Weight",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Enter the weight of the object",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),

SizedBox(height:20),


    Text("Quantity",
    style: TextStyle(fontSize:15,
    fontWeight: FontWeight.w500,),
    ),
    SizedBox(height:8),

TextField(
  decoration: InputDecoration( 
     labelText:"Enter Quantity of the objects",
     labelStyle: const TextStyle(fontSize: 14),
     border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
     )
     ),
),

 SizedBox(height: 15),

            
            Center(
              child: Column(
                children: [
                  Text("Total Amount"),
                  SizedBox(height: 5),
                  Text(
                    "Sh $totalAmount",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),

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
                  print("Seats: $totalAmount");
                },
                child: Text(
                  "Proceed to Payment",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ]
        )
      ),
    
   
    
    );
  }
}