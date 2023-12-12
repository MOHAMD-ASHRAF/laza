part of 'laza_cubit.dart';

@immutable
abstract class LazaState {}

class LazaInitial extends LazaState {}

class GetAllProductsLoadingState extends LazaState{}
class GetAllProductsSuccessState extends LazaState{}
class GetAllProductsErrorState extends LazaState{
  final String error;
  GetAllProductsErrorState(this.error);

}
