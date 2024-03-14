import 'dart:developer';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenProductSelectionProductFindDropdownGridView extends StatefulWidget {
  const ScreenProductSelectionProductFindDropdownGridView({super.key});

  @override
  State<ScreenProductSelectionProductFindDropdownGridView> createState() =>
      _ScreenProductSelectionProductFindDropdownGridViewState();
}

class _ScreenProductSelectionProductFindDropdownGridViewState
    extends State<ScreenProductSelectionProductFindDropdownGridView> {
  String? selecteVerient;
  TextEditingController modelController = TextEditingController();
  TextEditingController varientController = TextEditingController();
  Color contsinerColor = kWhite;
  Color textColor = kWhite;
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
                  builder: (context, state) {
                    return DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        buttonStyleData: ButtonStyleData(
                          decoration: BoxDecoration(
                            color: contsinerColor,
                            border: Border.all(
                              color: textFieldBorderColor,
                            ),
                            borderRadius: kRadius5,
                          ),
                        ),
                        hint: Text(
                          'Model',
                          style: textHeadInter.copyWith(color: klightgrey),
                        ),
                        isExpanded: true,
                        items: state.models?.map<DropdownMenuItem<String>>(
                          (model) {
                            return DropdownMenuItem<String>(
                              value: model,
                              child: FittedBox(
                                child: Text(
                                  model,
                                  style: textHeadSemiBold1.copyWith(
                                      fontSize: sWidth * 0.036),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          if (context.read<CategoryBlocBloc>().modelFilter !=
                              value) {
                            context.read<CategoryBlocBloc>().varientFilter =
                                null;
                          }
                          context.read<CategoryBlocBloc>().modelFilter = value;
                          context.read<CategoryBlocBloc>().add(
                                GetVarients(
                                  brandName: context
                                      .read<CategoryBlocBloc>()
                                      .barndName!,
                                  categoryType: context
                                      .read<CategoryBlocBloc>()
                                      .categoryType!,
                                  seriesName: context
                                      .read<CategoryBlocBloc>()
                                      .seriesName!,
                                  model: value!,
                                ),
                              );
                          context.read<CategoryBlocBloc>().add(
                                CategoryBlocEvent.getProducts(
                                  seriesName: context
                                      .read<CategoryBlocBloc>()
                                      .seriesName!,
                                  categoryType: context
                                      .read<CategoryBlocBloc>()
                                      .categoryType!,
                                  brandName: context
                                      .read<CategoryBlocBloc>()
                                      .barndName!,
                                ),
                              );
                          log('model bloc veriable ${context.read<CategoryBlocBloc>().modelFilter}');
                          log('model $value');
                        },
                        value: context.read<CategoryBlocBloc>().modelFilter,
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: kRadius5,
                            color: kBlueLight,
                          ),
                          offset: const Offset(0, -5),
                          maxHeight: 250,
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 50,
                        ),
                        dropdownSearchData: dropdownSearchData(
                            controller: modelController, data: 'model'),
                        onMenuStateChange: (isOpen) {
                          if (!isOpen) {
                            modelController.clear();
                            setState(() {
                              isOpen = !isOpen;
                              textColor = kBlack;
                              contsinerColor = kWhite;
                            });
                          } else {
                            setState(() {
                              isOpen = !isOpen;
                              contsinerColor = kBluePrimary;
                              textColor = kWhite;
                            });
                          }
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            kWidth10,
            kWidth5,
            Expanded(
                child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
                builder: (context, state) {
                  return DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      buttonStyleData: ButtonStyleData(
                        decoration: BoxDecoration(
                          color: contsinerColor,
                          border: Border.all(
                            color: textFieldBorderColor,
                          ),
                          borderRadius: kRadius5,
                        ),
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        width: 0,
                      ),
                      hint: Text(
                        'Varient',
                        style: textHeadInter.copyWith(color: klightgrey),
                      ),
                      isExpanded: true,
                      items: state.varients?.map<DropdownMenuItem<String>>(
                        (varient) {
                          return DropdownMenuItem<String>(
                            value: varient,
                            child: Text(
                              varient,
                              style: textHeadSemiBold1.copyWith(
                                  fontSize: sWidth * 0.04,
                                  color: isOpen ? kWhite : kBlack),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (value) {
                        context.read<CategoryBlocBloc>().varientFilter = value;
                        context.read<CategoryBlocBloc>().add(
                              CategoryBlocEvent.getProducts(
                                seriesName: context
                                    .read<CategoryBlocBloc>()
                                    .seriesName!,
                                categoryType: context
                                    .read<CategoryBlocBloc>()
                                    .categoryType!,
                                brandName:
                                    context.read<CategoryBlocBloc>().barndName!,
                              ),
                            );
                      },
                      value: context.read<CategoryBlocBloc>().varientFilter,
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: kRadius5,
                          color: kBlueLight,
                        ),
                        offset: const Offset(0, -5),
                        maxHeight: 250,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                      dropdownSearchData: dropdownSearchData(
                          controller: varientController, data: 'varient'),
                      onMenuStateChange: (isOpen) {
                        if (!isOpen) {
                          varientController.clear();
                          setState(() {
                            textColor = kBlack;
                            contsinerColor = kBluePrimary;
                          });
                        } else {
                          setState(() {
                            textColor = kWhite;
                            contsinerColor = kWhite;
                          });
                        }
                      },
                    ),
                  );
                },
              ),
            ))
          ],
        );
      },
    );
  }

  DropdownSearchData<String> dropdownSearchData(
      {TextEditingController? controller, String? data}) {
    return DropdownSearchData(
      searchController: controller,
      searchInnerWidgetHeight: 50,
      searchInnerWidget: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: kWhite,
        )),
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(right: 10, top: 5),
          child: TextFormField(
            style: const TextStyle(color: kWhite),
            expands: true,
            maxLines: null,
            controller: controller,
            decoration: InputDecoration(
              labelStyle: textHeadBoldBig,
              icon: const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 5),
                child: Icon(
                  Icons.search,
                  color: kWhite,
                ),
              ),
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              hintText: 'Search $data',
              hintStyle: textHeadMedium1.copyWith(color: kWhite),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: kWhite),
                borderRadius: kRadius10,
              ),
            ),
          ),
        ),
      ),
      searchMatchFn: (item, searchValue) {
        return item.value.toString().toLowerCase().contains(
              searchValue.toLowerCase(),
            );
      },
    );
  }
}
