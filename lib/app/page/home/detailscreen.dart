import 'package:flutter/material.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key, required this.ProductListData});
  final ProductListData;
  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // details product
        children: [
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.ProductListData.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            widget.ProductListData.name,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "\$${widget.ProductListData.price}",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
