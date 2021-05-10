import 'package:flutter/material.dart';
import 'package:practice_app/model/newmodel.dart';

class GridViewNew extends StatefulWidget {
  NewProduct newProduct;
  GridViewNew(this.newProduct);

  @override
  _GridViewNewState createState() => _GridViewNewState();
}

class _GridViewNewState extends State<GridViewNew> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.network(
            widget.newProduct.url,
            height: 100,
            width: 90,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  widget.newProduct.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(widget.newProduct.price),
              )
            ],
          ),
        ],
      ),
    );
  }
}
