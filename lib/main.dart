import 'package:beachdu/application/business_logic/brands_bloc/category_bloc_bloc.dart';
import 'package:beachdu/application/business_logic/home_bloc/home_bloc.dart';
import 'package:beachdu/application/business_logic/navbar/navbar_cubit.dart';
import 'package:beachdu/application/business_logic/question_tab/question_tab_bloc.dart';
import 'package:beachdu/application/presentation/routes/route_generator.dart';
import 'package:beachdu/application/presentation/routes/routes.dart';
import 'package:beachdu/domain/core/di/dipendency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  await configureInjection();
  runApp(const Beachdu());
}

class Beachdu extends StatelessWidget {
  const Beachdu({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HomeBloc>()),
        BlocProvider(create: (context) => getIt<CategoryBlocBloc>()),
        BlocProvider(create: (context) => getIt<QuestionTabBloc>()),
        BlocProvider(
          create: (context) => NavbarCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.initial,
        onGenerateRoute: RouteGenerator().onGenerateRoute,
      ),
    );
  }
}
