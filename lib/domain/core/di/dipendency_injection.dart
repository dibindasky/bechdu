import 'package:beachdu/domain/core/di/dipendency_injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  getIt.init(environment: Environment.prod);
}
