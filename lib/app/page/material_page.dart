
import 'package:cleanarch/app/core/navigation/navigation_service.dart';
import 'package:cleanarch/app/modules/annotations/presentation/bloc/annotation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../modules/annotations/presentation/pages/menu_page.dart';


class CustomMaterialPage extends StatelessWidget {
   const CustomMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MultiBlocProvider(
  providers: [
    BlocProvider<AnnotationBloc>(
      create: (BuildContext context) => AnnotationBloc(),
    ),

  ],
  child: 

     MaterialApp(
      navigatorKey: GetIt.I.get<NavigationService>().navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
      "/":(context) => const MenuPage(),
      }
    ));
    
  }
  
}