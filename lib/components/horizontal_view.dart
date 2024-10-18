import 'package:flutter/material.dart';
import 'package:flutter_train/components/card_product.dart';
import 'package:flutter_train/constants/font_family.dart';
import 'package:flutter_train/constants/respone_size.dart';
import 'package:flutter_train/theme/text_theme.dart';

import '../data/product.dart';

class HorizontalView extends StatelessWidget {
  const HorizontalView({
    super.key,
    required this.title,
    required this.products,
  });

  final String title;
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Response.width(context, 16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Text(
            title,
            style: textStyle(context, fontFamily: FontFamily.semibold),
          ),
          SizedBox(height: Response.height(context, 16)),
          // List view
          SizedBox(
            width: double.infinity,
            height: Response.height(context, 200),
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CardProduct(
                product: products[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
