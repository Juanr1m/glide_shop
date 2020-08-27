import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20.0, 20.0, 0),
            child: Text(
              'Edit',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
