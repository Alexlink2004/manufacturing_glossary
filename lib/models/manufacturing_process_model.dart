class ManufacturingProcess {
  final String processName;
  final String processNameInEnglish;
  final List<String> categories;
  final String definition;
  final List<String> commonProducts;
  final String machineryAndEquipment;
  final String illustration;
  final String videoLink;
  final Classification classification;

  ManufacturingProcess({
    required this.processName,
    required this.processNameInEnglish,
    required this.categories,
    required this.definition,
    required this.commonProducts,
    required this.machineryAndEquipment,
    required this.illustration,
    required this.videoLink,
    required this.classification,
  });
}

enum Classification {
  maquinado,
  formadoMecanico,
  corte,
  fundicionMoldeoColado,
  limpiezaYAcabado,
  unionYEnsamble,
  tratamientosTermicos,
  metalurgiaPolvos,
}
