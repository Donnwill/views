import 'package:flutter/material.dart';
import 'package:practice_app/homePages/gridView.dart';
import 'package:practice_app/homePages/new.dart';
import 'package:practice_app/model/newmodel.dart';
import '../model/model.dart';
import 'package:provider/provider.dart';
import '../provider/provider.dart';

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> product = [];
  List<NewProduct> newProduct = [];

  @override
  Widget build(BuildContext context) {
    setState(() {
      ExecutionAreaProvider executionAreaProvider =
          Provider.of<ExecutionAreaProvider>(context, listen: false);
      product = executionAreaProvider.productListView;
      newProduct = executionAreaProvider.newProductListView;
    });
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(title: Text('Demo app')),
        body: Column(
          children: [
            Container(
              height: 180,
              child: GridView.builder(
                // padding: EdgeInsets.only(bottom: 50),
                primary: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 2.5),
                itemCount: newProduct.length,
                itemBuilder: (BuildContext context, int index) {
                  return GridViewNew(newProduct[index]);
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: product.length,
                itemBuilder: (BuildContext context, int index) {
                  return NewHomePage(product[index]);
                },
              ),
            ),
          ],
        ));
  }
}
