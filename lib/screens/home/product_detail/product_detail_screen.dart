import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail(
      {Key key, this.title, this.price, this.descript, this.imagePath})
      : super(key: key);
  final String title;
  final String price;
  final String descript;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Glide in Black',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/black.png'),
              Text(
                '\$29.0',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'Unisex',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizeGuideButton(),
              SizedBox(
                height: 10.0,
              ),
              DetailDesc(),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () => {},
                color: Colors.black,
                child: Text(
                  'Добавить в корзину',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MoreProduct(),
            ],
          ),
        ),
      ),
    );
  }
}

class SizeGuideButton extends StatelessWidget {
  const SizeGuideButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Size Guide',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          Icon(Icons.star)
        ],
      ),
    );
  }
}

class DetailDesc extends StatelessWidget {
  const DetailDesc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        Text(
          'adsadadsadsadsadadasdasdas',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}

class MoreProduct extends StatelessWidget {
  const MoreProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'More Swag',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
