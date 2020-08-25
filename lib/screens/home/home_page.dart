import 'package:flutter/material.dart';
import 'package:shop_cupertino/screens/card/card_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetsScreen = <Widget>[
    HomeScreen(),
    CardScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Swag',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: HomeScreen(),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            title: Text('Card'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        ProductCard(
          title: 'Glide in Black',
          price: '\$29.0',
          imagePath: 'assets/images/black.png',
        ),
        ProductCard(
          title: 'Glide in White',
          price: '\$29.0',
          imagePath: 'assets/images/white.png',
        ),
        ProductCard(
          title: 'Glide in Green',
          price: '\$29.0',
          imagePath: 'assets/images/green.png',
        ),
        ProductCard(
          title: 'Glide in Grey',
          price: '\$29.0',
          imagePath: 'assets/images/grey.png',
        ),
      ],
    ));
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({Key key, this.title, this.price, this.imagePath})
      : super(key: key);
  final String title;
  final String price;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          child: Text(price),
        ),
      ],
    );
  }
}
