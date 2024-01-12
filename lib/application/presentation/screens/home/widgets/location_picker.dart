import 'package:beachdu/application/presentation/utils/colors.dart';
import 'package:beachdu/application/presentation/utils/constants.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationChooser extends StatefulWidget {
  const LocationChooser({
    super.key,
  });

  @override
  State<LocationChooser> createState() => _LocationChooserState();
}

class _LocationChooserState extends State<LocationChooser> {

  LocationService locationService=LocationService();
  @override
  void initState() {
    getPosition();
    super.initState();
  }

  Future getPosition() async {
    await locationService.requestPermission();
    try {
      await locationService.getCurrentLocation();
    } catch (e) {
      print('error fetching');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_on_rounded,
            color: kBluePrimary,
          ),
          kWidth5,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(LocationService.locationData?.toString()??
                'Select Location',
                style: textHeadMedium1,
              ),
              DottedDashedLine(
                height: 1,
                width: sWidth * 0.8,
                axis: Axis.horizontal,
              )
            ],
          )
        ],
      ),
    );
  }
}

class LocationService {

  Location location = Location();
  static LocationData? locationData;

  Future<bool> requestPermission() async {
    final permission = await location.requestPermission();
    return permission == PermissionStatus.granted;
  }

  Future<LocationData> getCurrentLocation() async {
    final serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      final result =await location.requestService;
      if (result == true) {
        print('Service has been enabled');
      } else {
        throw Exception('GPS service not enabled');
      }
    }

    final locations = await location.getLocation();
    locationData=locations;
    
    return locations;
  }
}