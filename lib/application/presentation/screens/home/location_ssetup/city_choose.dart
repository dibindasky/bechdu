import 'package:beachdu/application/presentation/screens/home/location_ssetup/pincode_selection.dart';
import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:beachdu/application/presentation/utils/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LocationCityChoosing extends StatefulWidget {
  const LocationCityChoosing({Key? key}) : super(key: key);

  @override
  _LocationCityChoosingState createState() => _LocationCityChoosingState();
}

class _LocationCityChoosingState extends State<LocationCityChoosing> {
  final List<String> locations = [
    'Bangalore',
    'Mumbai',
    'Delhi',
    'Chennai',
    'Hyderabad',
    'Kolkata',
    'Pune',
  ];

  List<String> filteredLocations = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    filteredLocations = locations;
    super.initState();
  }

  void filterLocations(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredLocations = locations;
      } else {
        filteredLocations = locations
            .where((location) =>
                location.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(locationbackgropundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight40,
                Text(
                  'Select City',
                  style: textHeadBold1.copyWith(fontSize: sWidth * .04),
                ),
                kHeight10,
                CupertinoTextField(
                  onChanged: filterLocations,
                  style: textHeadMedium1.copyWith(
                    color: kWhite,
                  ),
                  suffix: Container(
                    padding: const EdgeInsets.only(right: 13),
                    height: 20,
                    child: Image.asset('assets/images/location_list_png.png'),
                  ),
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Iconsax.search_favorite,
                      color: kWhite,
                      size: 18,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: kBlueLight,
                    borderRadius: kRadius5,
                  ),
                  placeholder: 'Search...',
                  placeholderStyle: textHeadInter.copyWith(
                    color: klightgrey,
                  ),
                ),
                GridView.builder(
                  itemCount: filteredLocations.length,
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
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => LocationPinCodes(
                              selectedLocation: filteredLocations[index],
                            ),
                          ),
                        );
                      },
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
                            Text(filteredLocations[index]),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                kHeight10,
                const Spacer(),
                Center(
                  child: CustomButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    text: 'Go back',
                  ),
                ),
                kHeight40,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
