import 'package:flutter/material.dart';
import 'package:listing_products_ui/ui/utils.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {

    if (Responsive.isMobile(context)) {}
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: vv(context),
        ));
    ;
  }
}

vv(context) {
  var size = MediaQuery.of(context).size;
  final double itemWidth = size.width / 3;
  double height = (size.height - kToolbarHeight - 24) / 2;
  if (Responsive.isDesktop(context)) {
    return GridView.builder(
      // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: (itemWidth / height),
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 400,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Image.network(
                    'https://source.unsplash.com/random/300x200',
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Brand Name",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 3),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Product Name",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "\u{20B9} 500 ",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 14),
                            ),
                            Text("\u{20B9}600",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13)),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: InkWell(
                            splashColor: Colors.red,
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 3),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "GST T&C APPLY",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  } else if (Responsive.isMobile(context)) {
    return GridView.builder(
      // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: 0.6,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Image.network(
                  'https://source.unsplash.com/random/300x200',
                  fit: BoxFit.cover,
                  height: 200,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Brand Name",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 3),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Product Name",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "\u{20B9} 500 ",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                          Text("\u{20B9}600",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 13)),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: InkWell(
                          splashColor: Colors.red,
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 3),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "GST T&C APPLY",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
