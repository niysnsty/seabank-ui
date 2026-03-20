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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 80,
            titleSpacing: 0,
            title: headerSection(),
          ),
            SliverList(delegate: SliverChildListDelegate([
              saldoSection(),
              menuSection(),
              //pocketSection(),
            ]),
          ),
        ]
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
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(radius: 18, backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH0TPDNHRZoPXJYBONBzjG5RsSCdRrCzOiUQ&s"),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Murniati", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                SizedBox(height: 2),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 160,
                    child: Text("Account No: 1512 7845 2363",
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 12,                      
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.copy, color: Colors.black54, size: 12) 
                  ],
                )
              ],             
           ),
          ],
        ),
        Icon(Icons.notifications_none, color: Colors.black54, size: 20)
      ],
    )
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(230, 224, 2, 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text("Riwayat", style: TextStyle(color: Colors.white, fontSize: 12)),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12)
                  ],
                ),
              ),
            ],
          ),
          Text("Total Saldo", style: TextStyle(color: Colors.white70, fontSize: 14)),
          SizedBox(height: 5),
          Row(
            children: [
              Text("Rp", style: TextStyle(color: Colors.white70, fontSize: 16)),
              Text(" 1.000.000", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Colors.white54, thickness: 1),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Tabungan", style: TextStyle(color: Colors.white70, fontSize: 12)),
                      SizedBox(width: 3),
                      Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 12)
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("Rp 1.000.000", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text("2,5% p.a. cair harian", style: TextStyle(color: Colors.white70, fontSize: 10)),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Deposito", style: TextStyle(color: Colors.white70, fontSize: 12)),
                      SizedBox(width: 3),
                      Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 12)
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("Rp 0", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text("Hingga 6% p.a.", style: TextStyle(color: Colors.white70, fontSize: 10)),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
Widget menuSection() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color:Colors.black12),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              menuItem(Icons.swap_horiz, "Transfer", isNew: true),
              menuItem(Icons.receipt, "Bills"),
              menuItem(Icons.account_balance_wallet, "E-Wallet"),
              menuItem(Icons.people, "Referral"),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              menuItem(Icons.monetization_on, "Deposite"),
              menuItem(Icons.arrow_downward, "Tarik Tunai"),
              menuItem(Icons.arrow_upward, "Setor Tunai"),
              menuItem(Icons.more_horiz, "Lain nya"),

            ],
          ),
        ],
      ),
    ),      
  );
}
Widget menuItem(IconData icon, String title, {bool isNew = false}) {
  return Column(
    children: [
      Stack(
        children: [
          CircleAvatar( radius: 22, backgroundColor: Color(0xffFFF3E0),child: Icon(icon, color: Colors.orange),
          ),

          if (isNew)
            Positioned(
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text("New", style: TextStyle(fontSize: 8, color: Colors.white)),
              ),
            )
        ],
      ),
      SizedBox(height: 6),
      Text(title, style: TextStyle(fontSize: 11))
    ],
  );
}
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