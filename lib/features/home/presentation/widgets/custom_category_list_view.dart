import 'package:flutter/material.dart';
import 'package:murshid/features/home/presentation/widgets/custom_category_list_view_item.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.separated(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        },
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) {
          return const CustomCategoryListViewItem();
        },
      ),
    );
  }
}
