import 'dart:async';
import 'package:beachdu/data/secure_storage/secure_fire_store.dart';
import 'package:beachdu/domain/model/location/city_update_request_model/city_update_request_model.dart';
import 'package:beachdu/domain/model/location/city_update_responce_model/city_update_responce_model.dart';
import 'package:beachdu/domain/model/location/pincode_update_request_model/pincode_update_request_model.dart';
import 'package:beachdu/domain/model/location/pincode_update_responce_model/pincode_update_responce_model.dart';
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
    on<LocationSearch>(locationSearch);
    on<LocationUpdate>(locationUpdate);
    on<PinCodePick>(pincodeLoad);
    on<PincodeSearch>(pincodeSearch);
    on<PincodeUpdate>(pincodeUpdate);
    on<SetPicondeSecure>(setPincodeSecure);
    on<Clear>(clear);
  }

  FutureOr<void> setPincodeSecure(SetPicondeSecure event, emit) async {
    await SecureSotrage.setPincode(pincode: event.pincode);
    await SecureSotrage.setPicodeBool();
  }

  FutureOr<void> locationLoad(LocationPick event, emit) async {
    final loginStatus = await SecureSotrage.getlLogin();
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await locationRepo.locationPick();
    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
      ));
    }, (successLocation) async {
      locations = successLocation;
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          filteredLocations: successLocation,
          isLogin: loginStatus,
        ),
      );
    });
  }

  FutureOr<void> locationSearch(LocationSearch event, emit) {
    final searchQuery = event.searchQuery.toLowerCase();
    List<String> filteredLocations = locations.where((location) {
      return location.toLowerCase().contains(searchQuery);
    }).toList();
    emit(state.copyWith(filteredLocations: filteredLocations));
  }

  FutureOr<void> locationUpdate(LocationUpdate event, emit) async {
    final loginStatus = await SecureSotrage.getlLogin();

    if (loginStatus == false) return;
    final data = await locationRepo.locationUpdation(
      cityUpdateRequestModel: event.cityUpdateRequestModel,
    );
    data.fold((falure) => null, (successupdation) async {
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          message: successupdation.message,
          cityUpdateResponceModel: successupdation,
          isLogin: loginStatus,
        ),
      );
    });
  }

  FutureOr<void> pincodeLoad(PinCodePick event, emit) async {
    await SecureSotrage.setLocation(location: event.cityName);
    final loginStatus = await SecureSotrage.getlLogin();
    emit(state.copyWith(isLoading: true, hasError: false));
    final data = await locationRepo.pincodePick(
      cityName: event.cityName,
    );
    cityName = event.cityName;
    data.fold((falure) {
      emit(state.copyWith(
        hasError: true,
        isLoading: false,
      ));
    }, (successPincodes) async {
      pinCodes = successPincodes;
      emit(
        state.copyWith(
          hasError: false,
          isLoading: false,
          filteredPincodes: successPincodes,
          isLogin: loginStatus,
        ),
      );
    });
  }

  FutureOr<void> pincodeSearch(PincodeSearch event, emit) {
    final searchQuery = event.searchQuery.toLowerCase();
    List<String> filteredPincodes = pinCodes.where((pinCode) {
      return pinCode.toLowerCase().contains(searchQuery);
    }).toList();
    emit(state.copyWith(filteredPincodes: filteredPincodes));
  }

  FutureOr<void> pincodeUpdate(PincodeUpdate event, emit) async {
    final loginStatus = await SecureSotrage.getlLogin();
    if (loginStatus == false) return;
    final data = await locationRepo.pincodeUpdation(
      pincodeUpdateRequestModel: event.pincodeUpdateRequestModel,
    );
    data.fold((falure) => null, (successPincode) async {
      emit(
        state.copyWith(
          pincodeUpdateResponceModel: successPincode,
          isLogin: loginStatus,
        ),
      );
    });
    await SecureSotrage.setPincode(
      pincode: event.pincodeUpdateRequestModel.pincode!,
    );
    await SecureSotrage.setPicodeBool();
  }

  FutureOr<void> clear(Clear event, emit) {
    pincode = null;
    location = null;
  }
}
