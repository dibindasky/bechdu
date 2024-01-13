import 'package:beachdu/application/presentation/routes/route_generator.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(Beachdu());
}

class Beachdu extends StatelessWidget {
  Beachdu({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //colorScheme: const ColorScheme.dark(primary: kGreenPrimary),
          ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initial,
      onGenerateRoute: routeGenerator.onGenerateRoute,
    );
  }
}
