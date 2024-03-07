import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/domain/model/category_model/single_category_brands_responce_model/brands.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductSearchField extends StatelessWidget {
  const ProductSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, categoryState) {
        if (categoryState.isLoading) {
          return const CircularProgressIndicator();
        } else if (categoryState.hasError) {
          return Text(categoryState.message ?? 'An error occurred');
        } else {
          return buildDropdown(
            categoryState.getSingleCategoryResponce!.brands!,
            context,
          );
        }
      },
    );
  }

  Widget buildDropdown(List<Brands> brands, BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        context
            .read<CategoryBlocBloc>()
            .add(CategoryBlocEvent.seriesSearch(searchQuery: value));
        //context.read<CategoryBlocBloc>().add(ProductSearch(searchQuery: value));
      },
      style: textHeadBold1.copyWith(fontSize: sWidth * .04),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: .0),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: DropdownButtonHideUnderline(
            child: BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
              builder: (context, state) {
                return DropdownButton<String>(
                  onChanged: (newValue) {
                    context.read<CategoryBlocBloc>().add(GetProducts(
                          categoryType:
                              context.read<CategoryBlocBloc>().categoryType!,
                          brandName: newValue!,
                        ));
                  },
                  value: context.read<CategoryBlocBloc>().barndName,
                  items: brands.map((brand) {
                    return DropdownMenuItem<String>(
                      value: brand.brandName,
                      child: Text(brand.brandName!),
                      onTap: () {
                        //Series fetching for selected products
                        context.read<CategoryBlocBloc>().add(GetSeries(
                              brandName: brand.brandName!,
                              categoryType: context
                                  .read<CategoryBlocBloc>()
                                  .categoryType!,
                            ));
                      },
                    );
                  }).toList(),
                  hint: Text(
                    context.read<CategoryBlocBloc>().barndName!,
                  ),
                );
              },
            ),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(color: kBlueLight),
        ),
        hintText: 'Search for Products...',
        hintStyle: textHeadBold1.copyWith(
          fontSize: sWidth * .035,
          color: kBlueLight,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: kBlueLight, width: .2),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
