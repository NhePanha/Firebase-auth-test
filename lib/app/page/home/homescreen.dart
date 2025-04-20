import 'package:firabase_auth/app/utils/appbar_wiget.dart';
import 'package:firabase_auth/app/utils/product_view.dart';
import 'package:firabase_auth/app/utils/searching.dart';
import 'package:firabase_auth/app/utils/slider_wi.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              appbar_wiget(),
              SizedBox(height: 20),
              // slider
              slider_wi(),
              SizedBox(height: 20),
              // search
              searching(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // product gridview
              product_view(),
            ],
          ),
        ),
      ),
    );
  }
}
