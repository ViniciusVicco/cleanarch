part of 'annotation_bloc.dart';

@immutable
abstract class AnnotationState {}

class AnnotationStateInitial extends AnnotationState {}

class AnnotationStateLoading extends AnnotationState {}

class AnnotationStateCompleted extends AnnotationState {
  final List<String> itens;
  AnnotationStateCompleted({required this.itens});
}