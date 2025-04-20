import 'package:flutter/material.dart';

class appbar_wiget extends StatefulWidget {
  const appbar_wiget({
    super.key,
  });

  @override
  State<appbar_wiget> createState() => _appbar_wigetState();
}

class _appbar_wigetState extends State<appbar_wiget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, // Aligns children with space between thems
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(81, 142, 118, 183),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.sort_outlined),
          ),
          const Column(
            children: [
              Text("Locations"),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text("Cambodia"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(62, 182, 147, 243),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.notifications),
          )
        ],
      ),
    );
  }
}
