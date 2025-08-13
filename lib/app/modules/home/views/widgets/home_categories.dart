import 'package:ecomerce/app/modules/subcategori/views/subcategori_view.dart';
import 'package:ecomerce/core/common/shimmer/simmer_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/common/vertical_image_text.dart';
import '../../../../../core/utils/constants/image_strings.dart';
import '../../../../../core/widgets/simmer_effect.dart';
import '../../../../routes/app_pages.dart';
import '../../../categories/controllers/categories_controller.dart';

class HkHomeCategories extends StatelessWidget {
  const HkHomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoriesController());

    return Obx(() {
      if (controller.isLoading.value) return HkCategoryShimmer();

      if (controller.categories.isEmpty) {
        return Center(
          child: Text(
            'No Data Found!',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.apply(color: Colors.white),
          ),
        );
      } else {
        return SizedBox(
          height: 80,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              final category = controller.categories[index];
              return HkVerticalImageText(
                image: HkImages.acerLogo,
                title: category,
                onTap: () =>
                    Get.toNamed(Routes.SUBCATEGORI, arguments: category),
              );
            },
          ),
        );
      }
    });
  }
}
