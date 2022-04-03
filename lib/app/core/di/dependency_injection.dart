
import 'package:cleanarch/app/core/navigation/navigation_service.dart';
import 'package:cleanarch/app/modules/annotations/presentation/bloc/annotation_bloc.dart';
import 'package:get_it/get_it.dart';

class DependencyInjection {
  final GetIt getIt = GetIt.instance;

  void setup() {
    getIt.registerSingleton<NavigationService>(NavigationService());
    getIt.registerSingleton<AnnotationBloc>(AnnotationBloc());
  }
}