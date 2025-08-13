import 'package:ecomerce/core/utils/constants/size.dart';
import 'package:ecomerce/core/widgets/simmer_effect.dart';
import 'package:flutter/cupertino.dart';

class HkCategoryShimmer extends StatelessWidget {
  HkCategoryShimmer({super.key, this.itemCount = 6});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            SizedBox(width: HkSizes.spaceBtwItems),
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Circular Icon
              HkShimmerEffect(width: 50, height: 50, radius: 55),
              const SizedBox(height: HkSizes.spaceBtwItems / 2),

              /// Text
              HkShimmerEffect(width: 55, height: 8),
            ],
          );
        },
      ),
    );
  }
}
