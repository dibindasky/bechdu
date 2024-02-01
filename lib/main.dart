import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/routes/route_generator.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const Beachdu());
}

class Beachdu extends StatelessWidget {
  const Beachdu({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => QuestionTabBloc(),
        ),
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            //colorScheme: const ColorScheme.dark(primary: kGreenPrimary),
            ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.initial,
        onGenerateRoute: RouteGenerator().onGenerateRoute,
      ),
    );
  }
}
