import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductInfo {
  final String name;
  final double price;
  ProductInfo(this.name, this.price);
}

final product = [
  ProductInfo('Wireless', 0.3),
  ProductInfo('Keyboard', 5.8),
  ProductInfo('Camera', 8),
  ProductInfo('Speaker', 4),
  ProductInfo('Ipad', 4),
];

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentProductIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product[_currentProductIndex].name),
            Padding(padding: EdgeInsets.only(top: 30)),
            SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            ElevatedButton(
              onPressed: () {
                _currentProductIndex++;
              },
              child: const Text('check'),
            )
          ],
        ),
      ),
    );
  }
}
