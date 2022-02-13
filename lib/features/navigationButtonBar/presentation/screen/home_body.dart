import 'package:cell_phone/core/utils/constants.dart';
import 'package:cell_phone/features/navigationButtonBar/presentation/bloc/cubit/navigation_cubit.dart';
import 'package:cell_phone/features/navigationButtonBar/presentation/screen/home_indexstack_page.dart';
import 'package:cell_phone/features/pages_tab/best_sellers/presentartion/screen/best_sellers_screen.dart';
import 'package:cell_phone/features/pages_tab/home/presentation/screen/home.dart';
import 'package:cell_phone/features/pages_tab/profile/presentation/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        if (state.navbarItem == NavbarItem.home) {
          return const Home();
        } else if (state.navbarItem == NavbarItem.cart) {
          return const BestSellersScreen();
        } else if (state.navbarItem == NavbarItem.profile) {
          return const Profile();
        }
        return Container();
      },
    );
  }
}
