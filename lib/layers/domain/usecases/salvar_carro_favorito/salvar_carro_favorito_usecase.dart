import 'package:tubetest_app/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritoUseCase{
  Future<bool> call(CarroEntity carroEntity);
}