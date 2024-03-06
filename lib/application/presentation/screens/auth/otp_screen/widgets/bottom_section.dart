import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/enums/type_display.dart';
import 'package:beachdu/application/presentation/utils/snackbar/snackbar.dart';
import 'package:beachdu/application/presentation/widgets/custom_elevated_button.dart';
import 'package:beachdu/domain/model/login/otp_verify_request_model/otp_verify_request_model.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/abandend_order_request_model.dart';
import 'package:beachdu/domain/model/order_model/abandend_order_request_model/product_details.dart';
import 'package:beachdu/domain/model/pickup_question_model/pickup_question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key, required this.loginWay});
  final LoginWay loginWay;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight20,
        Text(
          "I didn't receive any code. RESEND",
          style: textHeadMedium1,
        ),
        kHeight50,
        loginWay == LoginWay.fromProfile ||
                loginWay == LoginWay.fromQuestionPick
            ? kHeight20
            : Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(Routes.bottomBar);
                    context.read<AuthBloc>().phoneNumberController.clear();
                  },
                  child: Text(
                    'Skip for now',
                    style: textHeadInter.copyWith(
                      fontSize: sWidth * .045,
                      color: klightGreen,
                      decoration: TextDecoration.underline,
                      decorationColor: klightGreen,
                      decorationThickness: 1.4,
                    ),
                  ),
                ),
              ),
        kHeight50,
        BlocBuilder<QuestionTabBloc, QuestionTabState>(
          builder: (context, questionBlo) {
            return BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return ElevatedButtonLong(
                  wdth: sWidth * .7,
                  onPressed: () {
                    final otp = context
                        .read<AuthBloc>()
                        .otpController
                        .text
                        .replaceAll(' ', '');
                    RegExp phoneNumberRegExp = RegExp(r'^[0-9]+$');
                    if (phoneNumberRegExp.hasMatch(otp)) {
                      if (otp.isEmpty) {
                        showSnack(
                            context: context, message: 'Enter your otp here');
                      } else if (otp.length < 4) {
                        showSnack(
                          context: context,
                          message: 'OTP number should keep 4 digits',
                        );
                      } else {
                        //Login event calling
                        OtpVerifyRequestModel otpVerifyRequestModel =
                            OtpVerifyRequestModel(
                          otp: otp,
                          phone: context
                              .read<AuthBloc>()
                              .phoneNumberController
                              .text
                              .replaceAll(' ', ''),
                        );
                        context.read<AuthBloc>().add(
                              AuthEvent.otpVeriying(
                                otpVerifyRequestModel: otpVerifyRequestModel,
                              ),
                            );
                        if (loginWay == LoginWay.fromQuestionPick) {
                          PickupQuestionModel pickepQuestionModel =
                              PickupQuestionModel(
                            categoryType:
                                context.read<CategoryBlocBloc>().categoryType,
                            productSlug: context.read<CategoryBlocBloc>().slug,
                            selectedOptions: context
                                .read<QuestionTabBloc>()
                                .state
                                .selectedOption,
                          );

                          //Product name Concatination
                          final verient =
                              context.read<CategoryBlocBloc>().verient;
                          final model = context.read<CategoryBlocBloc>().model;
                          final name = '$verient $model';

                          ProductDetails productDetails = ProductDetails(
                            slug: context.read<CategoryBlocBloc>().slug,
                            name: name,
                            options: questionBlo.selectedOption,
                          );

                          AbandendOrderRequestModel abandendOrderRequestModel =
                              AbandendOrderRequestModel(
                                  productDetails: productDetails);

                          context.read<QuestionTabBloc>().add(
                                GetBasePrice(
                                  pickupQuestionModel: pickepQuestionModel,
                                  abandendOrderRequestModel:
                                      abandendOrderRequestModel,
                                ),
                              );
                        }
                        // context.read<AuthBloc>().phoneNumberController.clear();
                      }
                    } else {
                      showSnack(
                        context: context,
                        message: 'Not a OTP number: $otp',
                      );
                    }
                  },
                  text: state.isLoading ? 'Verifying' : 'Submit',
                );
              },
            );
          },
        ),
      ],
    );
  }
}
