import 'package:tubetest_app/layers/domain/entities/carro_entity.dart';
import 'package:tubetest_app/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:tubetest_app/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUseCaseImp implements SalvarCarroFavoritoUseCase{
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUseCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async{
    carroEntity.serLogica();
   return  await _salvarCarroFavoritoRepository(carroEntity);
  }
}