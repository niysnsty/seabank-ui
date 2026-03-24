import 'package:flutter/material.dart';
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
              pocketSection(),
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
                    SizedBox(width: 165,
                    child: Text("No. Rekening: 1512 7845 2363",
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
                  color: const Color.fromARGB(230, 207, 3, 3),
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
          Text("Total Saldo", style: TextStyle(color: Colors.white, fontSize: 14)),
          SizedBox(height: 5),
          Row(
            children: [
              Text("Rp", style: TextStyle(color: Colors.white, fontSize: 16)),
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
                      Text("Tabungan", style: TextStyle(color: Colors.white, fontSize: 12)),
                      SizedBox(width: 3),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12)
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
                      Text("Deposito", style: TextStyle(color: Colors.white, fontSize: 12)),
                      SizedBox(width: 3),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12)
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
              menuItem(Icons.swap_horiz, "Transfer"),
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
Widget menuItem(IconData icon, String title) { 
  return Column(
    children: [
      Stack(
        children: [
          CircleAvatar( radius: 22, backgroundColor: Color(0xffFFF3E0),child: Icon(icon, color: Colors.orange),
          ),
        ],
      ),
      SizedBox(height: 6),
      Text(title, style: TextStyle(fontSize: 11))
    ],
  );
}
Widget pocketSection() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("E-Wallet Terhubung", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,          
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),                  
                ),
                child: Row(
                  children: [
                    CircleAvatar(radius: 16, backgroundImage: NetworkImage("https://radarbanyumas.disway.id/upload/88da84b9d3cabeeb4b1541a9b0ae3ee8.jpg")
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ShopeePay  >", style: TextStyle(fontSize: 12)),
                        Text("Rp. 6.231", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ), 
              ),
              Container(
                width: 150,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    CircleAvatar(radius: 16, backgroundImage: NetworkImage("https://blob.cloudcomputing.id/images/a618a1e5-6218-4a40-bb86-a064bfb50469/logo-ovo-l-min.jpg"),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("OVO", style: TextStyle(fontSize: 12)),
                        Text("Hubungkan  >", style: TextStyle(fontSize: 12, color: Colors.orange)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Riwayat Transaksi", style: TextStyle(fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_forward_ios, size: 14,)
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16, backgroundColor: Colors.orange,
                        child: Icon(Icons.home, size: 16, color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("MURNIATI", style: TextStyle(fontSize: 12)),
                          Text("Transfer\n21 Mar 2026, 15:54", style: TextStyle(fontSize: 10, color: Colors.grey),)
                        ],
                      ),
                    ],
                  ),
                  Text("+Rp 66.000", style: TextStyle(color: Colors.green)),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16, backgroundColor: Colors.blue,
                        child: Icon(Icons.monetization_on, size: 16, color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Bunga Tabungan", style: TextStyle(fontSize: 12)),
                          Text("Bunga\n21 Mar 2026, 01:57", style: TextStyle(fontSize: 10, color: Colors.grey),)
                        ],
                      ),
                    ],
                  ),
                  Text("+Rp 93", style: TextStyle(color: Colors.green)),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16, backgroundColor: Colors.blue,
                        child: Icon(Icons.monetization_on, size: 16, color: Colors.white),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Bunga Tabungan", style: TextStyle(fontSize: 12)),
                          Text("Bunga\n20 Mar 2026, 00:56", style: TextStyle(fontSize: 10, color: Colors.grey),)
                        ],
                      ),
                    ],
                  ),
                  Text("+Rp 93", style: TextStyle(color: Colors.green)),
                ],
              ),
             SizedBox(height: 10),
             Text("Transaksi Lainnya  >", style: TextStyle(color: Colors.grey),)
            ],
          ),
        ),
      ],
    ),
  );  
}
Widget bottomNav() {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black12,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            navItem(Icons.home, "Beranda", true),
            navItem(Icons.swap_horiz, "Bayar/Transfer", false),
            SizedBox(width: 60), // Space for the floating action button
            navItem(Icons.monetization_on, "Deposito", false),
            navItem(Icons.person, "Saya", false),
          ],
        ),
      ),
      Positioned(
        bottom: 25,
        child: Container(
          width: 60,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                color: Colors.black26,
              )
            ],
          ),
          child: Icon(Icons.qr_code, color: Colors.white),
        ),
      )
    ],
  );
}
class navItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isActive;

  const navItem(this.icon, this.title, this.isActive, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 22,
          color: isActive ? Colors.orange : Colors.grey,
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: isActive ? Colors.orange : Colors.grey,
          ),
        )
      ],
    );
  }
}