import 'package:beachdu/application/business_logic/auth/auth_bloc.dart';
import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/internet_connection_check/internet_connection_check_cubit.dart';
import 'package:beachdu/application/business_logic/location/location_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/place_order/place_order_bloc.dart';
import 'package:beachdu/application/business_logic/profile/profile_bloc.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/routes/route_generator.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/domain/core/di/dipendency_injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:beachdu/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

final navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await configureInjection();
  runApp(Beachdu(connectivity: Connectivity()));
}

class Beachdu extends StatelessWidget {
  const Beachdu({super.key, required this.connectivity});
  final Connectivity connectivity;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              InternetConnectionCheckCubit(connectivity: connectivity),
        ),
        BlocProvider(create: (context) => getIt<ProfileBloc>()),
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<LocationBloc>()),
        BlocProvider(create: (context) => getIt<HomeBloc>()),
        BlocProvider(create: (context) => getIt<CategoryBlocBloc>()),
        BlocProvider(create: (context) => getIt<QuestionTabBloc>()),
        BlocProvider(create: (context) => NavbarCubit()),
        BlocProvider(create: (context) => getIt<PlaceOrderBloc>()),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.initial,
        onGenerateRoute: RouteGenerator().onGenerateRoute,
      ),
    );
  }
}
