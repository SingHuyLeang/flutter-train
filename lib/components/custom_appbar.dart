import 'package:flutter/material.dart';
import 'package:flutter_train/theme/color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.firstName,
    required this.userProfile,
    this.count = 0,
  });
  final String firstName, userProfile;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // content
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, $firstName",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(fontSizeDelta: 8),
                ),
                const SizedBox(height: 12),
                Text(
                  "There are $count new Products in your.",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: ThemeColor.primary),
                ),
              ],
            ),
          ),
          // profile
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(userProfile),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
