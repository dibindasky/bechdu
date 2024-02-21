import 'dart:async';
import 'package:beachdu/domain/model/pincode_responce_model/pincode_responce_model.dart';
import 'package:beachdu/domain/repository/location_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationRepo locationRepo;
  String? cityName;
  LocationBloc(this.locationRepo) : super(LocationState.initial()) {
    on<LocationPick>(locationPick);
    on<PinCodePick>(pincodePick);
  }
  FutureOr<void> locationPick(LocationPick event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await locationRepo.locationPick();
    data.fold(
        (falure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
            )),
        (successLocation) => emit(
              state.copyWith(
                hasError: false,
                isLoading: false,
                locations: successLocation,
              ),
            ));
  }

  FutureOr<void> pincodePick(PinCodePick event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await locationRepo.pincodePick(
      cityName: event.cityName,
    );
    cityName = event.cityName;
    data.fold(
      (falure) => emit(
        state.copyWith(
          hasError: true,
          isLoading: false,
        ),
      ),
      (successPincodes) => emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          pincodeResponceModel: successPincodes,
        ),
      ),
    );
  }
}
