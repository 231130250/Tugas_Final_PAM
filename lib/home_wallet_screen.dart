import 'package:flutter/material.dart';

class HomeWalletScreen extends StatefulWidget {
  const HomeWalletScreen({super.key});

  @override
  State<HomeWalletScreen> createState() => _HomeWalletScreenState();
}

class _HomeWalletScreenState extends State<HomeWalletScreen> {
  int selectedIndex = 0; // 0 = account, 1 = Budget & goals

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          135,
        ), // digunakan untuk mengatur tinggi appBar(120px)
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 45, 170, 105),
          automaticallyImplyLeading:
              false, // digunakan biar tombol back tidak otomatis muncul
          flexibleSpace: SafeArea(
            // agar tidak menimpa/tertabrak dengan status bar seperti jam/ wifi dll itu
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu), // icon hamburger
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      Icon(Icons.notifications),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // tombol account
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 0;
                              });
                            },
                            child: Text(
                              'ACCOUNT',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          //underline jika tombol aktif
                          if (selectedIndex == 0)
                            Container(
                              height: 2,
                              width: 60,
                              color: Colors.white,
                            ),
                        ],
                      ),

                      //tombol budget & goals
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = 1;
                              });
                            },
                            child: Text(
                              'BUDGETS & GOALS',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          //underline jika tombol aktif
                          if (selectedIndex == 1)
                            Container(
                              height: 2,
                              width: 90,
                              color: Colors.white,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'List Of accounts',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Container(
                          child: Icon(Icons.settings, color: Colors.blueAccent),
                        ),
                      ],
                    ),

                    //content button
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // tombol status keuangan
                          Expanded(
                            child: Container(
                              height: 60,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 41, 110, 214),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cash',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Rp. 0',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //Tombol add account
                          Expanded(
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('ADD ACCOUNT'),
                                  Icon(
                                    Icons.add_circle,
                                    color: Colors.blueAccent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //detail account
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 64, 63, 63),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(children: [Text('ACCOUNT DETAIL')]),
                          ),
                        ),

                        // record
                        Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 64, 63, 63),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.menu_rounded,
                                color: Colors.blueAccent,
                              ),
                              Text('RECORDS'),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // card fitur
                    // fitur horizontal scroll
                    SizedBox(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        children: [],
                      ),
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
