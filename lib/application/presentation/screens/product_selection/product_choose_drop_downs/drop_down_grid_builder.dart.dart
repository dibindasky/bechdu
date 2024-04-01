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
  bool containerOpenArrow1 = false;
  bool containerOpenArrow2 = false;
  bool dropDownOn = false;
  Color textColor = kBlack;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child:
                  //  CustomDropdown(
                  //   selectedOption: context.read<CategoryBlocBloc>().modelFilter,
                  //   onChanged: (value) {
                  //     if (value == 'All') {
                  //       context.read<CategoryBlocBloc>().add(
                  //             CategoryBlocEvent.getProducts(
                  //               seriesName:
                  //                   context.read<CategoryBlocBloc>().seriesName!,
                  //               categoryType:
                  //                   context.read<CategoryBlocBloc>().categoryType!,
                  //               brandName:
                  //                   context.read<CategoryBlocBloc>().barndName!,
                  //             ),
                  //           );
                  //       context.read<CategoryBlocBloc>().varientFilter = null;
                  //     } else if (context.read<CategoryBlocBloc>().modelFilter !=
                  //         value) {
                  //       context.read<CategoryBlocBloc>().varientFilter = null;
                  //     }
                  //     context.read<CategoryBlocBloc>().modelFilter = value;
                  //     context.read<CategoryBlocBloc>().add(
                  //           GetVarients(
                  //             brandName:
                  //                 context.read<CategoryBlocBloc>().barndName!,
                  //             categoryType:
                  //                 context.read<CategoryBlocBloc>().categoryType!,
                  //             seriesName:
                  //                 context.read<CategoryBlocBloc>().seriesName!,
                  //             model: value,
                  //           ),
                  //         );
                  //     context.read<CategoryBlocBloc>().add(
                  //           CategoryBlocEvent.getProducts(
                  //             seriesName:
                  //                 context.read<CategoryBlocBloc>().seriesName!,
                  //             categoryType:
                  //                 context.read<CategoryBlocBloc>().categoryType!,
                  //             brandName:
                  //                 context.read<CategoryBlocBloc>().barndName!,
                  //           ),
                  //         );
                  //     log('model bloc veriable ${context.read<CategoryBlocBloc>().modelFilter}');
                  //     log('model $value');
                  //   },
                  //   options: state.models!,
                  // ),
                  Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
                  builder: (context, state) {
                    return DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        iconStyleData: IconStyleData(
                            icon: containerOpenArrow1
                                ? Icon(
                                    Icons.arrow_drop_up_sharp,
                                    color:
                                        containerOpenArrow1 ? kWhite : kBlack,
                                  )
                                : Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color:
                                        containerOpenArrow1 ? kWhite : kBlack,
                                  )),
                        buttonStyleData: ButtonStyleData(
                          decoration: BoxDecoration(
                            color: containerOpenArrow1 ? kBluePrimary : kWhite,
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
                          'Model',
                          style: textHeadInter.copyWith(color: klightgrey),
                        ),
                        isExpanded: true,
                        items: [
                          // DropdownMenuItem<String>(
                          //   value: 'All',
                          //   child: Text(
                          //     'All',
                          //     style: textHeadSemiBold1.copyWith(
                          //       color: containerOpenArrow1 ? kWhite : kBlack,
                          //       fontSize: sWidth * 0.036,
                          //     ),
                          //     overflow: TextOverflow.ellipsis,
                          //   ),
                          // ),
                          if (state.models != null)
                            for (var brand in state.models!)
                              DropdownMenuItem<String>(
                                value: brand,
                                child: Text(
                                  brand.replaceAll('Samsung ', ''),
                                  style: textHeadSemiBold1.copyWith(
                                    color:
                                        containerOpenArrow1 ? kWhite : kBlack,
                                    fontSize: sWidth * 0.036,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                        ],
                        onChanged: (value) {
                          // if (value == 'All') {
                          //   context.read<CategoryBlocBloc>().modelFilter ==
                          //       null;
                          //   context.read<CategoryBlocBloc>().state.varients ==
                          //       [];
                          //   context.read<CategoryBlocBloc>().add(
                          //         CategoryBlocEvent.getProducts(
                          //           seriesName: context
                          //                   .read<CategoryBlocBloc>()
                          //                   .seriesName ??
                          //               'noo series',
                          //           categoryType: context
                          //               .read<CategoryBlocBloc>()
                          //               .categoryType!,
                          //           brandName: context
                          //               .read<CategoryBlocBloc>()
                          //               .barndName!,
                          //         ),
                          //       );
                          // }

                          if (context.read<CategoryBlocBloc>().modelFilter !=
                              value) {
                            context.read<CategoryBlocBloc>().varientFilter =
                                null;
                          }
                          context.read<CategoryBlocBloc>().modelFilter = value;

                          context.read<CategoryBlocBloc>().add(
                                CategoryBlocEvent.getProducts(
                                  seriesName: context
                                          .read<CategoryBlocBloc>()
                                          .seriesName ??
                                      'noo series',
                                  categoryType: context
                                      .read<CategoryBlocBloc>()
                                      .categoryType!,
                                  brandName: context
                                      .read<CategoryBlocBloc>()
                                      .barndName!,
                                ),
                              );

                          // if (value != 'All') {
                          context.read<CategoryBlocBloc>().add(
                              CategoryBlocEvent.getVarients(
                                  categoryType: context
                                      .read<CategoryBlocBloc>()
                                      .categoryType!,
                                  brandName: context
                                      .read<CategoryBlocBloc>()
                                      .barndName!,
                                  seriesName: context
                                      .read<CategoryBlocBloc>()
                                      .seriesName!,
                                  model: value!));
                          // }
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
                          height: 40,
                        ),
                        dropdownSearchData: dropdownSearchData(
                            controller: modelController, data: 'model'),
                        onMenuStateChange: (isOpen) {
                          if (!isOpen) {
                            varientController.clear();
                            setState(() {
                              containerOpenArrow1 = false;
                            });
                          } else {
                            setState(() {
                              textColor = kWhite;
                              containerOpenArrow1 = true;
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
                // child: CustomDropdown(
                //   selectedOption: context.read<CategoryBlocBloc>().varientFilter,
                //   onChanged: (value) {
                //     context.read<CategoryBlocBloc>().varientFilter = value;
                //     context.read<CategoryBlocBloc>().add(
                //           CategoryBlocEvent.getProducts(
                //             seriesName:
                //                 context.read<CategoryBlocBloc>().seriesName!,
                //             categoryType:
                //                 context.read<CategoryBlocBloc>().categoryType!,
                //             brandName:
                //                 context.read<CategoryBlocBloc>().barndName!,
                //           ),
                //         );
                //   },
                //   options: state.varients!,
                // ),
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
                      iconStyleData: IconStyleData(
                          icon: containerOpenArrow2
                              ? Icon(
                                  Icons.arrow_drop_up_sharp,
                                  color: containerOpenArrow2 ? kWhite : kBlack,
                                )
                              : Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color: containerOpenArrow2 ? kWhite : kBlack,
                                )),
                      buttonStyleData: ButtonStyleData(
                        decoration: BoxDecoration(
                          color: containerOpenArrow2 ? kBluePrimary : kWhite,
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
                                  color: containerOpenArrow2 ? kWhite : kBlack),
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
                            containerOpenArrow2 = false;
                            dropDownOn = false;
                          });
                        } else {
                          setState(() {
                            textColor = kWhite;
                            dropDownOn = true;
                            containerOpenArrow2 = true;
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

  DropdownSearchData<String> dropdownSearchData({
    TextEditingController? controller,
    String? data,
  }) {
    return DropdownSearchData(
      searchController: controller,
      searchInnerWidgetHeight: 0,
      searchInnerWidget: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: kWhite,
            ),
          ),
        ),
        height: 50,
        child: TextFormField(
          style: const TextStyle(color: kWhite),
          // expands: true,
          //maxLines: null,
          controller: controller,
          decoration: InputDecoration(
            counterStyle: const TextStyle(color: kWhite),
            labelStyle: textHeadBoldBig,
            icon: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              child: Icon(
                Icons.search,
                color: kWhite,
              ),
            ),
            //isDense: true,
            hintText: 'Search',
            hintStyle: textHeadMedium1.copyWith(color: kWhite),
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

class CustomDropdown extends StatefulWidget {
  final List<String> options;
  final String? selectedOption;
  final ValueChanged<String>? onChanged;

  const CustomDropdown({
    Key? key,
    required this.options,
    this.selectedOption,
    this.onChanged,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool _isDropdownOpen = false;
  late TextEditingController _searchController;
  late List<String> _filteredOptions;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredOptions = widget.options;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isDropdownOpen = !_isDropdownOpen;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: _isDropdownOpen ? kBluePrimary : kWhite,
              border: Border.all(color: kBlack),
              borderRadius: BorderRadius.circular(5.0),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.selectedOption?.replaceAll('Samsung', '') ??
                      'Select Option',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 16.0,
                    color: _isDropdownOpen ? kWhite : kBlack,
                  ),
                ),
                Icon(
                  _isDropdownOpen
                      ? Icons.arrow_drop_up_outlined
                      : Icons.arrow_drop_down,
                  color: _isDropdownOpen ? kWhite : kBlack,
                ),
              ],
            ),
          ),
        ),
        if (_isDropdownOpen) ...[
          TextFormField(
            controller: _searchController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Search...',
              contentPadding: EdgeInsets.all(8.0),
            ),
            onChanged: (value) {
              setState(() {
                _filteredOptions = widget.options
                    .where((option) =>
                        option.toLowerCase().contains(value.toLowerCase()))
                    .toList();
              });
            },
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5.0),
            ),
            margin: const EdgeInsets.only(top: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: _filteredOptions.map((option) {
                return GestureDetector(
                  onTap: () {
                    if (widget.onChanged != null) {
                      widget.onChanged!(option);
                    }
                    setState(() {
                      _isDropdownOpen = false;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 4),
                    decoration: BoxDecoration(
                      borderRadius: kRadius5,
                      border: Border.all(color: kBlack, width: .6),
                      color: option == widget.selectedOption
                          ? kWhite
                          : kBluePrimary,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: Text(
                      option.replaceAll('Samsung', ''),
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color:
                            option == widget.selectedOption ? kBlack : kWhite,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ],
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
