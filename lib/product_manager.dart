import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {

  final String startProduct;

  ProductManager(this.startProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {

  List<String> products = [];

  @override
    void initState() {
      products.add(widget.startProduct);
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
      margin: EdgeInsets.all(8),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        child: Text('Add'),
        onPressed: () {
          setState(() {
            products.add('Advanced Food Tester');
            print(products);
          });
        },
      ),
    ),
    Products(products)
    ]);
  }
}
