import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/api/friutes_api.dart';
import 'package:fruit_app/common/widgets/button.dart';
import 'package:fruit_app/core/models/friute_model.dart';
import 'package:fruit_app/common/styles/text_style.dart';
import 'package:fruit_app/utils/themes/colors.dart';
import 'package:fruit_app/utils/themes/palete_generater.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 32,
              left: 24,
              right: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Everything in your\ndoor step",
                  style: textStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
                Container(
                  width: double.infinity,
                  height: 147,
                  margin: const EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/poster.png"),
                    ),
                  ),
                ),
                // data
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listFriut.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    mainAxisExtent: 280,
                  ),
                  itemBuilder: (context, index) => productCard(
                    listFriut[index],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget productCard(FriutModel model) {
    return FutureBuilder(
      future: generateColor(model.image),
      builder: (context, snapshot) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColor.gray.withOpacity(0.2),
            width: 1.5,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundColor: snapshot.data?.withOpacity(0.3),
                  ),
                  CircleAvatar(
                    radius: 52,
                    backgroundColor: snapshot.data?.withOpacity(0.7),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 35,
                      left: 35,
                      bottom: 10,
                      right: 10,
                    ),
                    child: Image.asset(
                      model.image,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name,
                      style: textStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'by ${model.shop}',
                      style: textStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: AppColor.gray,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ${model.price}',
                          style: textStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Button(icon: Icons.add),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
