import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/application/presentation/screens/product/widgets/custom_button.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class FinalProductImage extends StatelessWidget {
  const FinalProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: kBlueLight,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            height: 200,
            width: 100,
            child: Image.network(
              'https://www.designinfo.in/wp-content/uploads/2023/01/Apple-iPhone-14-Pro-Mobile-Phone-493177786-i-4-1200Wx1200H-485x485-optimized.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Iphone 13',
                        style: textHeadBold1.copyWith(
                            color: kWhite, fontSize: sWidth * .057),
                      ),
                      kWidth5,
                      Text(
                        '256 GB | Black',
                        style: textHeadMedium1.copyWith(
                            color: kWhite, fontSize: sWidth * .033),
                      ),
                    ],
                  ),
                  const Text('upto ₹ 20,000'),
                  const Text(
                    'Note : The Price stated above depends on the condition of the product and is not final.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                  ),
                  CustomButton(onPressed: () => Navigator.pushNamed(context, Routes.questions),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
