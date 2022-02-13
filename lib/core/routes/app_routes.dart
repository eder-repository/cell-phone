import 'package:cell_phone/core/app/my_app.dart';
import 'package:cell_phone/core/routes/routes.dart';
import 'package:cell_phone/features/auth/auth_page.dart';
import 'package:cell_phone/features/auth/login/presentation/screen/login_screen.dart';
import 'package:cell_phone/features/auth/register/presentation/screen/register_screen.dart';
import 'package:cell_phone/features/details/presentation/screen/details_screen.dart';
import 'package:cell_phone/features/home/presentation/screen/home_screen.dart';
import 'package:cell_phone/features/select-brand/presentation/screen/select_brand.dart';
import 'package:cell_phone/features/splash/presentation/screen/splash_screen.dart';
import 'package:flutter/material.dart' show Widget, BuildContext;

Map<String, Widget Function(BuildContext)> get appRoutes => {
      AppRoutes.SPLASH: (_) => SplashScreen.create(),
      AppRoutes.AUTH: (_) => const AuthPage(),
      AppRoutes.REGISTER: (_) => RegisterScreen(),
      AppRoutes.LOGIN: (_) => LoginScreen(),
      AppRoutes.HOME: (_) => const HomeScreen(),
      AppRoutes.DETAILS: (_) => const DetailsScreen(),
      AppRoutes.MARKPHTONE: (_) => const SelectBrand()
    };
