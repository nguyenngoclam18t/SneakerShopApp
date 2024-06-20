import 'package:flutter/material.dart';

import '../models/Shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  void Function()? onDelete;
  CartItem({super.key, required this.shoe, required this.onDelete});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: widget.onDelete,
        ),
      ),
    );
  }
}
