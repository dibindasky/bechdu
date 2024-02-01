part of 'navbar_cubit.dart';

@freezed
class NavbarState with _$NavbarState {
  const factory NavbarState({
    required int selectedIndex,
  }) = _Initial;

  factory NavbarState.initial() => const NavbarState(selectedIndex: 0);
}
