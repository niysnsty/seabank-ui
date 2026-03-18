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
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // HEADER ATAS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH0TPDNHRZoPXJYBONBzjG5RsSCdRrCzOiUQ&s"),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ 
                          Text("Murniati"),
                          Text("Account No: 1512 7845 2363"),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.notifications),
                ],
              ),
              SizedBox(height: 20),
              // CARD SALDO
              Container(
                height: 150,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Saldo"),
                    SizedBox(height: 10),
                    Text("Rp. 1.000.000", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Earning: Rp. 500.000"),
                        Text("Interest Rate: 3.5% p.a"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
      

