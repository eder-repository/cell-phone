import 'package:cell_phone/features/navigationButtonBar/presentation/screen/home_body.dart';
import 'package:cell_phone/features/navigationButtonBar/presentation/screen/home_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var controller = BlocProvider.of<NavigationBloc>(context);
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: HomeBottomBar(),
        body: const HomeBody());
  }
}
