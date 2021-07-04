import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Wallet UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF5F627D),
            Color(0xFF5F627D),
          ],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          drawer: Drawer(),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(widget.title),
            actions: [
              IconButton(
                icon: Stack(children: [
                  Positioned(
                    right: 0.7,
                    width: 7,
                    height: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Icon(Icons.notifications),
                ]),
                onPressed: () {},
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(18),
                            width: 100,
                            height: 100,
                            child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2015/01/12/10/45/man-597178__340.jpg')),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            child: Image(
                              image: AssetImage('images/btc.png'),
                              width: 570,
                              height: 170,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(top: 24, bottom: 18),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: Colors.black54,
                        blurRadius: 10,
                        spreadRadius: -5,
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF08AEEA),
                        Color(0xFF2AF598),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Coins',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.add_circle_outline_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(bottom: 18)),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5B300), shape: BoxShape.circle),
                        child: Icon(CryptoFontIcons.BTC, color: Colors.white),
                      ),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bitcoin',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '\$35600.50',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '0.000041',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '12.41%',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => Divider(),
                    itemCount: 10,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
