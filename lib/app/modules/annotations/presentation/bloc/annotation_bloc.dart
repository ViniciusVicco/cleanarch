
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'annotation_event.dart';
part 'annotation_state.dart';

class AnnotationBloc extends Bloc<AnnotationEvent, AnnotationState>   {
  AnnotationBloc() : super(AnnotationStateInitial()) {
      int counter = 0;
  List<String> itens = [];
    on<AnnotationEvent>((event, emit) {

    });
    on<GetAnnotationsEvent>((event, emit)async {
      emit(AnnotationStateLoading());
  await Future.delayed(const Duration(milliseconds: 1500));
      itens.add("Item$counter");
      counter++;
          emit(AnnotationStateCompleted(itens: itens));
    });
  }


}
