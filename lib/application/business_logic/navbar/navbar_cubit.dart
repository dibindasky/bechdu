import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'navbar_state.dart';
part 'navbar_cubit.freezed.dart';

class NavbarCubit extends Cubit<NavbarState> {
  NavbarCubit() : super(NavbarState.initial());
  void changeNavigationIndex(int index) {
    return emit(NavbarState(selectedIndex: index));
  }
}
