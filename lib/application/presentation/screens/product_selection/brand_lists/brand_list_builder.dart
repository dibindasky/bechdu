import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/screens/product_selection/brand_lists/brand_container.dart';
import 'package:beachdu/application/presentation/screens/product_selection/search_field/brand_search_field.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/skeltons/skelton.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/brands.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class BrandListviewBuilder extends StatefulWidget {
  const BrandListviewBuilder({super.key});

  @override
  State<BrandListviewBuilder> createState() => _BrandListviewBuilderState();
}

class _BrandListviewBuilderState extends State<BrandListviewBuilder> {
  @override
  void initState() {
    // context
    //     .read<CategoryBlocBloc>()
    //     .add(const CategoryBlocEvent.getSingleCategoryBrands(isLoad: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Skeleton(
            crossAxisCount: 2,
            itemCount: 15,
            height: 00,
          );
        } else if (state.hasError) {
          return SizedBox(
            height: sHeight,
            child: const Center(
              child: CircularProgressIndicator(
                color: kGreenPrimary,
              ),
            ),
          );
        } else if (state.filteredBrands == null) {
          return Lottie.asset(emptyLottie);
        }
        final data = state.getSingleCategoryResponce;
        final List<Brands> brands = state.filteredBrands ?? data!.brands!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandSearchField(),
            kHeight10,
            Text('Showing All Brands', style: textHeadBold1),
            kHeight10,
            brands.isEmpty
                ? Center(child: Lottie.asset(emptyLottie))
                : GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: brands.length,
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return BrandContainer(index: index);
                    },
                  ),
          ],
        );
      },
    );
  }
}
