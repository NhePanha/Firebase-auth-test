import 'package:firabase_auth/app/model/product_list.dart';
import 'package:firabase_auth/app/page/home/detailscreen.dart';
import 'package:flutter/material.dart';

class product_view extends StatefulWidget {
  const product_view({
    super.key,
  });

  @override
  State<product_view> createState() => _product_viewState();
}

class _product_viewState extends State<product_view> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 500,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemCount: ProductListData.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(ProductListData[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    ProductListData[index].name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "\$${ProductListData[index].price}",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 5),
                  // cart
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detailscreen(
                                    ProductListData: ProductListData[index],
                                  )));
                    },
                    child: Icon(Icons.shopping_cart_outlined),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
