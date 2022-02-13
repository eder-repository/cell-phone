import 'package:cell_phone/core/utils/constants.dart';
import 'package:cell_phone/features/navigationButtonBar/presentation/bloc/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBottomBar extends StatelessWidget {
  HomeBottomBar({Key? key}) : super(key: key);

  final List<_BottomBarItem> _items = [
    _BottomBarItem(icon: Icons.home, label: 'Home'),
    _BottomBarItem(icon: Icons.shopping_cart_sharp, label: 'cart'),
    _BottomBarItem(icon: Icons.account_circle_rounded, label: 'profile'),
  ];

  final List<_BottomBarItem> _item2 = [
    _BottomBarItem(icon: Icons.home_outlined, label: 'Home'),
    _BottomBarItem(icon: Icons.shopping_cart_outlined, label: 'cart'),
    _BottomBarItem(icon: Icons.account_circle_outlined, label: 'profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 70,
        decoration: const BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: DefaultTabController(
          length: 3,
          child: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
              return TabBar(
                onTap: (value) {
                  if (value == 0) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.home);
                  } else if (value == 1) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.cart);
                  } else if (value == 2) {
                    BlocProvider.of<NavigationCubit>(context)
                        .getNavBarItem(NavbarItem.profile);
                  }
                },
                indicator:
                    const BoxDecoration(border: Border(top: BorderSide.none)),
                tabs: List.generate(_items.length, (index) {
                  final item = _items[index];
                  final item2 = _item2[index];
                  return BottonBarItemButton(
                    item: item,
                    item2: item2,
                    isActive: state.index == index,
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}

class BottonBarItemButton extends StatelessWidget {
  const BottonBarItemButton({
    Key? key,
    required this.item,
    required this.item2,
    required this.isActive,
    this.onPressed,
  }) : super(key: key);

  final _BottomBarItem item, item2;
  final bool isActive;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    // print(isActive);
    // final Color color = isActive ? primaryColor : Colors.white;
    return Tab(
      icon: Icon(
        isActive ? item.icon : item2.icon,
        size: 25,
        color: isActive ? Colors.grey : Colors.white,
        // height: 45,
      ),
    );
  }
}

class _BottomBarItem {
  final String label;
  final IconData icon;

  _BottomBarItem({required this.icon, required this.label});
}
