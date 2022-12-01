
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  int id;
   ProductDetails({Key? key,required this.id}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState(id: id);
}

class _ProductDetailsState extends State<ProductDetails> {
  int id;
  _ProductDetailsState({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details $id")),
      body: Center(child: ElevatedButton(child: Text("Go Back"),onPressed: (){
       Navigator.pop(context,true);
      },)),
    );
  }
}
