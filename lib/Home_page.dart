import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'pages/Home.screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  // double maxHeight = 300.0;

  void itemTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _widgetOptions = [
      HomeScreen(),
      Container(
        height: 200.0,
        child: Swiper(
          autoplay: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return (
              Card(
                elevation: 10,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/card.png'),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Hello World $index',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            );
          },
          viewportFraction: 0.85,
          scale: 0.9,
          itemHeight: 300,
        ),
      ),
      Text('Screen Send'),
      Text('Screen History')
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Wallet'),
        leading: Icon(Icons.account_circle),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: itemTapped,
        iconSize: 25.0,
        // backgroundColor: Colors.white,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.black,
            activeIcon: Icon(Icons.home, color: Colors.grey),
            title: Text('Home', style: TextStyle(color: Colors.white))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_atm),
            backgroundColor: Colors.black,
            activeIcon: Icon(Icons.local_atm, color: Colors.grey),
            title: Text('Send', style: TextStyle(color: Colors.white))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            backgroundColor: Colors.black,
            activeIcon: Icon(Icons.payment, color: Colors.grey),
            title: Text('Payment', style: TextStyle(color: Colors.white))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            backgroundColor: Colors.black,
            activeIcon: Icon(Icons.history, color: Colors.grey),
            title: Text('History', style: TextStyle(color: Colors.white))
          )
        ],
      ),
    );
  }
}