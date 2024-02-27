import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:flutter/material.dart';

class Containers extends StatefulWidget {
  const Containers({super.key});

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  bool isTExtFieldUsername = false;
  bool isTExtFieldEmail = false;
  bool isTExtFieldNumber = false;
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username',
          style: textHeadRegular1.copyWith(color: klightgrey),
        ),
        kHeight10,
        isTExtFieldUsername
            ? TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  hintText: 'Enter username',
                ),
              )
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jack',
                        style: textHeadRegular1,
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isTExtFieldUsername = !isTExtFieldUsername;
                          });
                        },
                        child: Text(
                          'Change',
                          style: textHeadInter.copyWith(color: kGreenPrimary),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              ),
        kHeight20,
        Text(
          'Email',
          style: textHeadRegular1.copyWith(color: klightgrey),
        ),
        kHeight10,
        Text(
          'JJaisai@gmail.com',
          style: textHeadRegular1,
        ),
        const Divider(),
        kHeight20,
        Text(
          'Mobile Number',
          style: textHeadRegular1.copyWith(color: klightgrey),
        ),
        kHeight10,
        Text(
          '0000 000 000',
          style: textHeadRegular1,
        ),
        const Divider(),
        kHeight30,
        Align(
          alignment: Alignment.center,
          child: CustomButton(onPressed: () {}, text: 'Save'),
        ),
      ],
    );
  }
}
