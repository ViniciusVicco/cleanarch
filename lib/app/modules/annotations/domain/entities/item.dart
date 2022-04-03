import 'package:cleanarch/app/modules/annotations/data/models/item_model.dart';

class Item extends ItemModel {
  Item({required String nome, required int prioridade, required int quantidade, required double valorUnitario}) : super(nome: nome, prioridade: prioridade, quantidade: quantidade, valorUnitario: valorUnitario);

}