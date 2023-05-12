void main() {
  //final windPlant = EnergyPlant(); clases abstractas no se pueden instanciar
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print(windPlant.energyLeft);
  print('wind: ${chargePhone(windPlant)}');
  print(nuclearPlant.energyLeft);
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enought energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water, solar } //un enum no lleva ;

//ejemplo de una clase abstracta
abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; //nuclear, wind, water, solar

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount); //metodo sin implementación
}

//extends o implements
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {}
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft = (amount * 0.5);
  }
}
