import 'dart:developer';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/bottom_section.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/logo_to_countdown.dart';
import 'package:beachdu/application/presentation/screens/auth/otp_screen/widgets/pinput.dart';
import 'package:beachdu/application/presentation/screens/product_selection/product_screen.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/domain/core/failure/failure.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/abandend_order_request_model.dart';
import 'package:beachdu/domain/model/pickup_question_model/pickup_question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/model/order_model/abandend_order_request_model/product_details.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key, required this.loginWay});
  final LoginWay loginWay;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScopeNode = FocusScope.of(context);
        if (!focusScopeNode.hasPrimaryFocus) {
          focusScopeNode.unfocus();
        }
      },
      child: PopScope(
        canPop: false,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 100,
          ),
          body: BlocListener<QuestionTabBloc, QuestionTabState>(
            listener: (context, state) {
              if (state.lastChecking == true) {
                func(context);
              }
            },
            child: BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.hasError) {
                  showSnack(
                    context: context,
                    message: errorMessage,
                    color: kRed,
                  );
                }
                if (state.otpVerifyResponceModel != null) {
                  showSnack(context: context, message: 'Login Successfully');
                  loginOrSignup(context);
                  log('condition pick in condition');
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    const LogoToCountDownSection(),
                    kHeight50,
                    PinEnterField(),
                    BottomSection(loginWay: loginWay),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  loginOrSignup(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileEvent.clear());
    context.read<QuestionTabBloc>().add(const QuestionTabEvent.clear());
    context.read<PlaceOrderBloc>().add(const PlaceOrderEvent.clear());
    context.read<LocationBloc>().add(const LocationEvent.clear());
    context.read<HomeBloc>().add(const HomeEvent.clear());
    context.read<CategoryBlocBloc>().add(const CategoryBlocEvent.clear());
    if (loginWay == LoginWay.fromQuestionPick) {
      secondtabScreensNotifier.value = 2;
      secondtabScreensNotifier.notifyListeners();
      Navigator.pop(context);
    } else {
      Navigator.pushReplacementNamed(context, Routes.bottomBar);
    }
  }

  Future<void> func(BuildContext context) async {
    PickupQuestionModel pickepQuestionModel = PickupQuestionModel(
      categoryType: context.read<CategoryBlocBloc>().categoryType,
      productSlug: context.read<CategoryBlocBloc>().slug,
      selectedOptions: context.read<QuestionTabBloc>().selectedOptions,
    );

    //Product name Concatination
    final verient = context.read<CategoryBlocBloc>().verient;
    final model = context.read<CategoryBlocBloc>().model;
    final name = '$verient $model';

    ProductDetails productDetails = ProductDetails(
      slug: context.read<CategoryBlocBloc>().slug,
      name: name,
      options: context.read<QuestionTabBloc>().selectedOptions,
    );

    AbandendOrderRequestModel abandendOrderRequestModel =
        AbandendOrderRequestModel(productDetails: productDetails);

    context.read<QuestionTabBloc>().add(
          GetBasePrice(
            pickupQuestionModel: pickepQuestionModel,
            abandendOrderRequestModel: abandendOrderRequestModel,
          ),
        );
  }
}
