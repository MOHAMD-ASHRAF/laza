import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/end_point/end_point.dart';
import '../../../core/helpers/dio_helper.dart';

part 'laza_state.dart';

class LazaCubit extends Cubit<LazaState> {
  LazaCubit() : super(LazaInitial());

  static LazaCubit get(context) => BlocProvider.of(context);

  Future<void> getAllProducts() async {
    emit(GetAllProductsLoadingState());
    await DioHelper.getData(endPoints: allProducts).then((value) {
      print(value.data);
      emit(GetAllProductsSuccessState());
    }).catchError((error) {
      emit(GetAllProductsErrorState(error.toString()));
      print(error);
    });
  }
}
