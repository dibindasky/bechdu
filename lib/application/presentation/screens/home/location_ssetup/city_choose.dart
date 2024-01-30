import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LocationCityChoosing extends StatefulWidget {
  const LocationCityChoosing({Key? key}) : super(key: key);

  @override
  _LocationCityChoosingState createState() => _LocationCityChoosingState();
}

class _LocationCityChoosingState extends State<LocationCityChoosing> {
  List<String> locations = [
    'Bangalore',
    'Mumbai',
    'Delhi',
    'Chennai',
    'Hyderabad',
    'Kolkata',
    'Pune',
  ];

  List<String> pincodes = [
    '560001',
    '400001',
    '110001',
    '600001',
    '500001',
    '700001',
    '411001',
  ];

  List<String> filteredLocations = [];
  String selectedPincode = '';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Select City',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
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
                prefix: const Icon(
                  Iconsax.search_status1,
                  color: kWhite,
                  size: 18,
                ),
                decoration: BoxDecoration(
                  color: kBlueLight,
                  borderRadius: kRadius5,
                ),
                placeholder: 'Search...',
                placeholderStyle: textHeadInter.copyWith(
                  color: Colors.grey,
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
                      // Handle location selection
                      String selectedLocation = filteredLocations[index];
                      // Find the corresponding pincode
                      int locationIndex = locations.indexOf(selectedLocation);
                      selectedPincode = pincodes[locationIndex];
                      // TODO: Display pincode or perform any action
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
                          const SizedBox(width: 10),
                          Text(filteredLocations[index]),
                        ],
                      ),
                    ),
                  );
                },
              ),
              if (selectedPincode.isNotEmpty)
                Text(
                  'Selected Pincode: $selectedPincode',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
