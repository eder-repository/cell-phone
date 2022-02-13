import 'package:cell_phone/core/di/dependency_injection.dart';
import 'package:cell_phone/core/routes/app_routes.dart';
import 'package:cell_phone/core/routes/routes.dart';
import 'package:cell_phone/features/auth/login/presentation/bloc/login/login_bloc.dart';
import 'package:cell_phone/features/home/presentation/bloc/bloc/add_cart_bloc.dart';
import 'package:cell_phone/features/navigationButtonBar/presentation/bloc/cubit/navigation_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NavigationCubit(),
          ),
          BlocProvider(
            create: (context) => AddCartBloc(),
          ),
          BlocProvider(
            create: (context) => LoginBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.SPLASH,
          routes: appRoutes,
        ),
      ),
    );
  }
}
