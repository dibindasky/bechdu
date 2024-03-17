import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/screens/home/home_screen.dart';
import 'package:beachdu/application/presentation/screens/order/my_orders_screen.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/screens/profile/profile_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final List<Widget> body = [
  const ScreenHome(),
  const SecondTabvaluelistanableBBuilder(),
  const ScreenMyOrders(),
  const PrfileLastBuilder(),
];

class ScreenBottomNavigation extends StatelessWidget {
  const ScreenBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarCubit, NavbarState>(
      builder: (context, state) {
        return Scaffold(
          body: body[state.selectedIndex],
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: ColoredBox(
              color: kBlack,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    splashColor: knill,
                  ),
                  child: BottomNavigationBar(
                    useLegacyColorScheme: false,
                    type: BottomNavigationBarType.fixed,
                    enableFeedback: false,
                    onTap: (value) {
                      context.read<NavbarCubit>().changeNavigationIndex(value);
                      context
                          .read<QuestionTabBloc>()
                          .add(const ResetTabSelection());
                    },
                    unselectedItemColor: kWhite,
                    showUnselectedLabels: true,
                    backgroundColor: kBlack,
                    currentIndex: state.selectedIndex,
                    selectedItemColor: kGreenPrimary,
                    items: const [
                      BottomNavigationBarItem(
                        backgroundColor: kBlack,
                        icon: Icon(Icons.home_filled),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: kBlack,
                        icon: Icon(Icons.phone_android),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: kBlack,
                        icon: Icon(Icons.format_list_bulleted_rounded),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        backgroundColor: kBlack,
                        icon: Icon(Icons.person),
                        label: '',
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
