import 'package:tubetest_app/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorUseCase{
  CarroEntity call(String cor);
}