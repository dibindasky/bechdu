import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationPinCodes extends StatefulWidget {
  const LocationPinCodes({
    super.key,
    required this.selectedLocation,
  });

  final String selectedLocation;

  @override
  State<LocationPinCodes> createState() => _LocationPinCodesState();
}

class _LocationPinCodesState extends State<LocationPinCodes> {
  List<String> filteredPincodes = [];
  String selectedPincode = '';

  List<String> pincodes = [
    '560001',
    '400001',
    '110001',
    '600001',
    '500001',
    '700001',
    '411001',
  ];

  @override
  void initState() {
    filteredPincodes = pincodes;
    super.initState();
  }

  void filteredPicodes(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredPincodes = pincodes;
      } else {
        filteredPincodes = pincodes
            .where((pincode) =>
                pincode.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(locationbackgropundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight40,
                Text(
                  widget.selectedLocation,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                CupertinoTextField(
                  onChanged: filteredPicodes,
                  style: textHeadMedium1.copyWith(
                    color: kBlack,
                  ),
                  decoration: BoxDecoration(
                    color: kWhiteextra,
                    borderRadius: kRadius5,
                  ),
                  placeholder: 'Enter pincode to continue',
                  placeholderStyle: textHeadInter.copyWith(
                    color: klightgrey,
                  ),
                ),
                kHeight20,
                GridView.builder(
                  itemCount: filteredPincodes.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / .4,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: kRadius15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.green[50],
                              radius: 7,
                              child: const CircleAvatar(
                                backgroundColor: Colors.lightGreen,
                                radius: 3,
                              ),
                            ),
                            kWidth10,
                            Text(filteredPincodes[index]),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
