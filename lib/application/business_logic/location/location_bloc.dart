import 'dart:async';
import 'dart:developer';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
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
  String? location;
  String? pincode;
  List<String> pinCodes = [];
  List<String> locations = [];
  LocationBloc(this.locationRepo) : super(LocationState.initial()) {
    on<LocationPick>(locationLoad);
    on<PinCodePick>(pincodeLoad);
    on<LocationSearch>(locationSearch);
    on<PincodeSearch>(pincodeSearch);
    on<PincodeSave>(pincodeSave);
    on<Clear>(clear);
  }

  FutureOr<void> clear(Clear event, emit) {
    pincode = null;
    location = null;
  }

  FutureOr<void> pincodeSearch(PincodeSearch event, emit) {
    final searchQuery = event.searchQuery.toLowerCase();
    List<String> filteredPincodes = pinCodes.where((pinCode) {
      return pinCode.toLowerCase().contains(searchQuery);
    }).toList();
    emit(state.copyWith(filteredPincodes: filteredPincodes));
  }

  FutureOr<void> locationSearch(LocationSearch event, emit) {
    final searchQuery = event.searchQuery.toLowerCase();
    List<String> filteredLocations = locations.where((location) {
      return location.toLowerCase().contains(searchQuery);
    }).toList();
    emit(state.copyWith(filteredLocations: filteredLocations));
  }

  FutureOr<void> locationLoad(LocationPick event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await locationRepo.locationPick();
    //log(data.toString());
    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
      ));
      //log('falure $falure');
    }, (successLocation) async {
      locations = successLocation;
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          filteredLocations: successLocation,
        ),
      );

      log('successLocation $successLocation');
    });
  }

  FutureOr<void> pincodeLoad(PinCodePick event, emit) async {
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await locationRepo.pincodePick(
      cityName: event.cityName,
    );
    cityName = event.cityName;
    log('$cityName');
    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
      ));
      log('falure $falure');
    }, (successPincodes) async {
      pinCodes = successPincodes;
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          filteredPincodes: successPincodes,
        ),
      );

      log('successPincodes $successPincodes');
    });
  }

  FutureOr<void> pincodeSave(PincodeSave event, emit) async {
    await SecureSotrage.setPincode(pincode: event.pinCode);
    log('pincodeSave bloc ${event.pinCode}');
  }
}
