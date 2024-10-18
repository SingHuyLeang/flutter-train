import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_train/components/rrect_button.dart';
import 'package:flutter_train/constants/font_family.dart';
import 'package:flutter_train/constants/respone_size.dart';
import 'package:flutter_train/data/product.dart';
import 'package:flutter_train/theme/color.dart';
import 'package:flutter_train/theme/text_theme.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Response.width(context, 150),
      height: Response.height(context, 200),
      margin: EdgeInsets.only(right: Response.width(context, 24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Container(
            width: double.infinity,
            height: Response.height(context, 120),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(product.image),
              ),
            ),
          ),
          SizedBox(height: Response.height(context, 12)),
          // sub detail
          Text(
            product.name.length > 13
                ? "${product.name.substring(0, 13)}..."
                : product.name,
            style: textStyle(context, fontFamily: FontFamily.medium),
          ),
          SizedBox(height: Response.height(context, 14)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "\$ ${product.price}",
                  style: textStyle(context, color: ThemeColor.primary),
                ),
              ),
              // button count qty
              Align(
                alignment: Alignment.bottomRight,
                child: RRectButton(count: 1, onTap: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
