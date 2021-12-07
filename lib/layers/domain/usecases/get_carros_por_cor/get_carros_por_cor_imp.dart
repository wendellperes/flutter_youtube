import 'package:tubetest_app/layers/domain/entities/carro_entity.dart';
import 'package:tubetest_app/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase{
  @override
  CarroEntity call(String cor){
    if (cor.contains('vermelhot')){
      return CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 50000.00);
    }
    return CarroEntity(placa: 'qwe', qtdPortas: 4, valor: 30000.00);
  }
}