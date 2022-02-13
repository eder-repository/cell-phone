import 'package:bloc/bloc.dart';
import 'package:cell_phone/core/utils/constants.dart';

import 'package:equatable/equatable.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.cart:
        emit(NavigationState(NavbarItem.cart, 1));
        break;
      case NavbarItem.profile:
        emit(NavigationState(NavbarItem.profile, 2));
        break;
    }
  }
}
