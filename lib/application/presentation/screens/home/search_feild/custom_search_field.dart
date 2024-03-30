import 'dart:developer';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/home/home_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/debouncer.dart';
import 'package:beachdu/domain/model/search_model/search_param_model/search_param_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchFieldHome extends StatelessWidget {
  CustomSearchFieldHome({super.key});
  final Debouncer debouncer = Debouncer(milliseconds: 100);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: kRadius10, color: klightwhite),
            width: sWidth * 0.7,
            child: TextField(
              controller:
                  context.read<HomeBloc>().globalProductSearchController,
              style: textHeadMedium1,
              decoration: InputDecoration(
                hintText: 'Search products',
                suffixIcon: context
                        .read<HomeBloc>()
                        .globalProductSearchController
                        .text
                        .isEmpty
                    ? null
                    : IconButton(
                        onPressed: () => context
                            .read<HomeBloc>()
                            .globalProductSearchController
                            .clear(),
                        icon: const Icon(Icons.clear),
                      ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: kBlack,
                  size: 20,
                ),
                border: InputBorder.none,
              ),
              onChanged: (value) {
                if (value.isNotEmpty) {
                  homeScreens.value = 1;
                  homeScreens.notifyListeners();
                  debouncer.run(() {
                    context.read<HomeBloc>().add(
                          HomeEvent.globalPrductSearch(
                            searchParamModel: SearchParamModel(search: value),
                          ),
                        );
                    log('event call search UI $value');
                  });
                } else {
                  homeScreens.value = 0;
                  homeScreens.notifyListeners();
                  context
                      .read<HomeBloc>()
                      .globalProductSearchController
                      .clear();
                }
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: klightwhite,
              borderRadius: kRadius10,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.place,
                color: kBlack,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.location);
              },
            ),
          ),
        ],
      ),
    );
  }
}
