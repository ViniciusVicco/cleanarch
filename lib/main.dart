import 'package:cleanarch/app/core/di/dependency_injection.dart';
import 'package:cleanarch/app/page/material_page.dart';
import 'package:flutter/material.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection().setup();
  runApp(const CustomMaterialPage());


  
}



