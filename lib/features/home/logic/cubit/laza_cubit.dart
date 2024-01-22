import 'package:bloc/bloc.dart';
import 'package:laza/features/home/data/models/products_model.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/end_point/end_point.dart';
import '../../../../core/helpers/dio_helper.dart';
part 'laza_state.dart';

class LazaCubit extends Cubit<LazaState> {
  LazaCubit() : super(LazaInitial());

  static LazaCubit get(context) => BlocProvider.of<LazaCubit>(context);
  ProductModel? product;

  Future<void> getAllProducts() async {
    emit(GetAllProductsLoadingState());
    await DioHelper.getData(endPoints: allProducts).then((value) {
     product = ProductModel.fromJson(value.data['products'][6]);

      print(product!.description);
     // print(value.data['products'][2]);
      emit(GetAllProductsSuccessState());
    }).catchError((error) {
      emit(GetAllProductsErrorState(error.toString()));
      print(error);
    });
  }
}
