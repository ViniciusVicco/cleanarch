import 'package:cleanarch/app/modules/annotations/presentation/bloc/annotation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AnnotationBloc>(context).add(GetAnnotationsEvent());
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  const Text("Delize para baixo para carregar"),
        ),
        body: BlocBuilder<AnnotationBloc, AnnotationState>(
          builder: (context, state) {
            if(state is AnnotationStateLoading){
              return const Center(child: CircularProgressIndicator(),);
            }
            if(state is AnnotationStateCompleted){
                          return RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<AnnotationBloc>(context).add(GetAnnotationsEvent());
              },
              child: ListView.builder(
                  itemCount: state.itens.length,
                  itemBuilder: (context, index) {
                    if (state.itens.isEmpty) {
                      return (const Text("Vazio"));
                    }
                    return Text(state.itens[index]);
                  }),
            );
            }
            return Container();
      
          },
        ));
  }
}
