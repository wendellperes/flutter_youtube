import 'package:flutter_test/flutter_test.dart';
import 'package:tubetest_app/layers/domain/entities/carro_entity.dart';

main (){

  test('Espero que a entitidade não seja nula', (){
    CarroEntity carroEntity = CarroEntity(
        placa: 'ADC123',
        qtdPortas: 2,
        valor: 1000.00
    );
    expect(carroEntity, isNotNull);
  });
  test('Espero que a quantidade de portas seja 2', (){
    CarroEntity carroEntity = CarroEntity(
        placa: 'ADC123',
        qtdPortas: 2,
        valor: 1000.00
    );
    expect(carroEntity.qtdPortas, 2);
  });
  test('Espero que o valor real seja 2000.00', (){
    CarroEntity carroEntity = CarroEntity(
        placa: 'ADC123',
        qtdPortas: 2,
        valor: 1000.00
    );
    var valorReal = 2000.00;
    expect(carroEntity.valorReal, valorReal);
  });
  test('Espero que o valor real seja 2000.00', (){
    CarroEntity carroEntity = CarroEntity(
        placa: 'ADC123',
        qtdPortas: 0,
        valor: 1000.00
    );
    var resultadoEsperado = 0.00;
    expect(carroEntity.valorReal, resultadoEsperado);
  });
}








