import 'package:flutter/material.dart';
//app entry point
void main() {
  runApp(const BRI());
}

class BRI extends StatelessWidget {
  const BRI({super.key});

  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: bottomNav(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerSection(),
            saldoSection(),
            //menuSection(),
            //pocketSection(),
          ],
        ),
      ),
    );
  }
}
 Widget headerSection() {
  return Container(
    width: double.infinity, 
    padding: const EdgeInsets.all(16),
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(radius: 20,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH0TPDNHRZoPXJYBONBzjG5RsSCdRrCzOiUQ&s"),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Murniati", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("Account No: 1512 7845 2363", style: TextStyle(color: Colors.black, fontSize: 12)),
                  ],
                )
              ],
            ),
            Icon(Icons.notifications_none, color: Colors.black, size: 30,),
          ],
        ),
        const SizedBox(height: 20),
      ],
    ),
  );
}
Widget saldoSection() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Row(
                children: [
                  Text("History", style: TextStyle(color: Colors.orangeAccent, fontSize: 12, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward_ios, color: Colors.orangeAccent, size: 12)
                ],
              ),
            ],
          ),
          Text("Total Saldo", style: TextStyle(color: Colors.white70, fontSize: 14)),
          SizedBox(height: 5),
          Row(
            children: [
              Text("Rp", style: TextStyle(color: Colors.white70, fontSize: 16)),
              Text(" 1.500.000", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Colors.white70, thickness: 1),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Earnings\nRp 2.500.000", style: TextStyle(color: Colors.white70, fontSize: 14)),
              Text("Interest Rate\nRp 5% p.a.", style: TextStyle(color: Colors.white70, fontSize: 14)),
            ],
          ),
        ],
      ),
    ),
  );
}
//Widget menuSection() {}
//Widget pocketSection() {}
Widget bottomNav() {
  return BottomNavigationBar(
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.grey,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.swap_horiz), label: "Pay"),
      BottomNavigationBarItem(icon: Icon(Icons.savings), label: "Deposit"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
    ],
  );
}