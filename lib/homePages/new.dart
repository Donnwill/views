import 'package:flutter/material.dart';
import 'package:practice_app/model/model.dart';

class NewHomePage extends StatelessWidget {
  Product product;
  NewHomePage(this.product);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          children: [
            Image.network(
              product.url,
              width: 100,
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    Text(
                      product.pname,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        product.weight,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        product.addinfo,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            product.mrp,
                            style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 15),
                          child: Text(product.newprice),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 90),
                          child: RaisedButton(
                            color: Colors.grey,
                            onPressed: () {},
                            child: Text(
                              'Add  +',
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
