import 'package:flutter/material.dart';

Widget paymentOptionCard({required String title, required String subtitle}) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        const Icon(Icons.arrow_forward),
      ],
    ),
  );
}

Widget cashPaymentPanel() {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.green[50],
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text("Cash payment details go here"),
  );
}

Widget mpesaPaymentPanel() {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.orange[50],
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Text("M-PESA payment details go here"),
  );
}

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool showCash = false;
    bool showMpesa = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return Scaffold(
          appBar: AppBar(title: const Text("Payment"), elevation: 0),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 5),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Amount to Pay",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text("Sh 1,250", style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      showCash = !showCash;
                      showMpesa = false;
                    });
                  },
                  child: paymentOptionCard(
                    title: "Cash Payment",
                    subtitle: "Accept physical cash",
                  ),
                ),

                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: showCash
                      ? cashPaymentPanel()
                      : const SizedBox.shrink(),
                ),

                const SizedBox(height: 15),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      showMpesa = !showMpesa;
                      showCash = false;
                    });
                  },
                  child: paymentOptionCard(
                    title: "M-PESA Payment",
                    subtitle: "Accept digital money",
                  ),
                ),

                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: showMpesa
                      ? mpesaPaymentPanel()
                      : const SizedBox.shrink(),
                ),

                const SizedBox(height: 25),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                  ),
                  child: const Text("Print Receipt"),
                ),
              ],
            ),
          ),

      
        );
      },
    );
  }
}
