import 'dart:async';
import 'dart:developer';
import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
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
          body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.hasError) {
                showSnack(
                  context: context,
                  message: state.message ?? errorMessage,
                  color: kRed,
                );
              }
              if (state.otpVerifyResponceModel != null) {
                showSnack(context: context, message: 'Login Successfully');
                loginOrSignup(context);
                if (state.otpVerifyResponceModel != null) {
                  log('condition pick in condition');
                  PickupQuestionModel pickepQuestionModel = PickupQuestionModel(
                    categoryType: context.read<CategoryBlocBloc>().categoryType,
                    productSlug: context.read<CategoryBlocBloc>().slug,
                    selectedOptions:
                        context.read<QuestionTabBloc>().state.selectedOption,
                  );

                  //Product name Concatination
                  final verient = context.read<CategoryBlocBloc>().verient;
                  final model = context.read<CategoryBlocBloc>().model;
                  final name = '$verient $model';

                  ProductDetails productDetails = ProductDetails(
                    slug: context.read<CategoryBlocBloc>().slug,
                    name: name,
                    options: context.read<QuestionTabBloc>().newList,
                  );

                  AbandendOrderRequestModel abandendOrderRequestModel =
                      AbandendOrderRequestModel(productDetails: productDetails);

                  context.read<QuestionTabBloc>().add(
                        GetBasePrice(
                          abandendOrderRequestModel: abandendOrderRequestModel,
                        ),
                      );
                }
                context.read<AuthBloc>().phoneNumberController.clear();
                context.read<AuthBloc>().otpController.clear();
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
    );
  }

  loginOrSignup(BuildContext context) {
    Timer(const Duration(microseconds: 500), () {
      if (loginWay == LoginWay.fromQuestionPick) {
        secondtabScreensNotifier.value = 2;
        secondtabScreensNotifier.notifyListeners();
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, Routes.bottomBar);
      }
    });
  }
}
