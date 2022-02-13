import 'package:cell_phone/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';

import 'core/app/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  injectDependencies();
  runApp(const MyApp());
}
