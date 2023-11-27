import 'package:flutter/material.dart';

import '../../models/manufacturing_process_model.dart';
import '../process_view_template.dart';

class ProcessDashboard extends StatefulWidget {
  static const String id = "/dashboard";

  @override
  _ProcessDashboardState createState() => _ProcessDashboardState();
}

class _ProcessDashboardState extends State<ProcessDashboard> {
  List<ManufacturingProcess> processes = [
    ManufacturingProcess(
      processName: "Abocardado",
      processNameInEnglish: "Flaring",
      categories: ["Maquinado"],
      definition:
          "Proceso que ensancha el extremo de un tubo para permitir su conexión con otro tubo.",
      commonProducts: ["Tubos ensanchados", "conexiones de tubería"],
      machineryAndEquipment: "Abocardadoras, herramientas de ensanche",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.maquinado,
    ),
    ManufacturingProcess(
      processName: "Acuñado",
      processNameInEnglish: "Coining",
      categories: ["Formado mecanico"],
      definition:
          "Proceso de formado que utiliza troqueles y presión para formar metal en una forma deseada.",
      commonProducts: ["Monedas", "medallas", "componentes de precisión"],
      machineryAndEquipment: "Prensas, troqueles",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.formadoMecanico,
    ),
    ManufacturingProcess(
      processName: "Avellanado",
      processNameInEnglish: "Countersinking",
      categories: ["Maquinado"],
      definition:
          "Proceso de mecanizado que crea un bisel o una cavidad cónica al inicio de un agujero.",
      commonProducts: ["Piezas con agujeros para tornillos avellanados"],
      machineryAndEquipment: "Brocas avellanadoras, tornos, fresadoras",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.maquinado,
    ),
    ManufacturingProcess(
      processName: "Calandrado",
      processNameInEnglish: "Calendering",
      categories: ["Formado Mecánico"],
      definition:
          "Proceso en el que se pasa un material a través de rodillos para reducir su espesor o para impartir una textura.",
      commonProducts: ["Láminas plásticas", "papel", "textiles"],
      machineryAndEquipment: "Calandrias (conjunto de rodillos)",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.formadoMecanico,
    ),
    ManufacturingProcess(
      processName: "Cizallado",
      processNameInEnglish: "Shearing",
      categories: ["Corte"],
      definition:
          "Proceso de corte que utiliza cuchillas para cortar láminas de metal sin formación de virutas.",
      commonProducts: ["Piezas cortadas de láminas metálicas"],
      machineryAndEquipment: "Cizallas, prensas de guillotina",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.corte,
    ),
    ManufacturingProcess(
      processName: "Colado",
      processNameInEnglish: "Casting",
      categories: ["Fundición, moldeo o colado"],
      definition:
          "Proceso en el que el metal fundido se vierte en un molde donde se solidifica tomando la forma del mismo.",
      commonProducts: [
        "Componentes de motor",
        "herramientas",
        "piezas decorativas"
      ],
      machineryAndEquipment: "Hornos de fundición, moldes, cubilotes",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.fundicionMoldeoColado,
    ),
    ManufacturingProcess(
      processName: "Corrugado (plegado)",
      processNameInEnglish: "Corrugating",
      categories: ["Formado mecánico"],
      definition:
          "Proceso que crea ondulaciones en las láminas metálicas para aumentar su rigidez.",
      commonProducts: ["Paneles de techado", "envases", "ductos"],
      machineryAndEquipment: "Máquinas corrugadoras, prensas",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.formadoMecanico,
    ),
    ManufacturingProcess(
      processName: "Corte con flama",
      processNameInEnglish: "Flame Cutting",
      categories: ["Corte"],
      definition:
          "Proceso que utiliza una flama de oxiacetileno para cortar metales gruesos.",
      commonProducts: ["Piezas metálicas cortadas a medida"],
      machineryAndEquipment:
          "Antorchas de corte, sistemas CNC de corte por flama",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.corte,
    ),
    ManufacturingProcess(
      processName: "Corte por agua",
      processNameInEnglish: "Waterjet Cutting",
      categories: ["Corte"],
      definition:
          "Proceso que utiliza un chorro de agua a alta presión, a menudo con un abrasivo, para cortar materiales.",
      commonProducts: [
        "Piezas metálicas",
        "cerámicas",
        "vidrio cortadas a medida"
      ],
      machineryAndEquipment: "Máquinas de corte por chorro de agua",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.corte,
    ),
    ManufacturingProcess(
      processName: "Cromado",
      processNameInEnglish: "Chroming",
      categories: ["Limpieza y acabado"],
      definition:
          "Proceso electroquímico que deposita una capa de cromo sobre un objeto para mejorar su resistencia y aspecto.",
      commonProducts: ["Componentes automotrices", "grifería", "accesorios"],
      machineryAndEquipment: "Baños de cromado, rectificadores",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.limpiezaYAcabado,
    ),
    ManufacturingProcess(
      processName: "Embutido",
      processNameInEnglish: "Deep Drawing",
      categories: ["Formado Mecanico"],
      definition:
          "Proceso que consiste en estampar un metal para crear una pieza hueca o un relieve profundo.",
      commonProducts: ["Ollas", "lavabos", "componentes automotrices huecos"],
      machineryAndEquipment: "Prensas de estampado, troqueles de embutición",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.formadoMecanico,
    ),
    ManufacturingProcess(
      processName: "Estampado",
      processNameInEnglish: "Stamping",
      categories: ["Formado Mecanico"],
      definition:
          "Proceso en el cual se utiliza un troquel para formar o cortar metal en una prensa.",
      commonProducts: [
        "Piezas metálicas para electrodomésticos",
        "vehículos",
        "herramientas"
      ],
      machineryAndEquipment: "Prensas de estampación, troqueles",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.formadoMecanico,
    ),
    ManufacturingProcess(
      processName: "Guillotinado",
      processNameInEnglish: "Shearing",
      categories: ["Corte"],
      definition:
          "Proceso de corte que se realiza con una máquina guillotina para cortar chapas o barras metálicas.",
      commonProducts: ["Paneles metálicos", "tiras"],
      machineryAndEquipment: "Guillotinas, prensas de corte",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.corte,
    ),
    ManufacturingProcess(
      processName: "Lapeado",
      processNameInEnglish: "Lapping",
      categories: ["Maquinado"],
      definition:
          "Proceso abrasivo que se utiliza para obtener acabados superficiales de gran precisión y suavidad.",
      commonProducts: [
        "Superficies de válvulas",
        "espejos de precisión",
        "componentes ópticos"
      ],
      machineryAndEquipment: "Máquinas de lapeado, abrasivos finos",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.maquinado,
    ),
    ManufacturingProcess(
      processName: "Limado",
      processNameInEnglish: "Filing",
      categories: ["Maquinado"],
      definition:
          "Proceso manual o mecánico de eliminación de material para dar forma o acabado a una pieza.",
      commonProducts: ["Piezas con acabados finales o ajustes específicos"],
      machineryAndEquipment: "Limas manuales, limadoras mecánicas",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.maquinado,
    ),
    ManufacturingProcess(
      processName: "Prensado isostático",
      processNameInEnglish: "Isostatic Pressing",
      categories: ["Metalurgia de polvos"],
      definition:
          "Técnica de compactación que utiliza una presión uniforme en todas las direcciones para formar materiales en polvo en una forma densa y homogénea.",
      commonProducts: [
        "Componentes cerámicos",
        "metales en polvo consolidados"
      ],
      machineryAndEquipment: "Prensas isostáticas",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.metalurgiaPolvos,
    ),
    ManufacturingProcess(
      processName: "Pulido",
      processNameInEnglish: "Polishing",
      categories: ["Limpieza y acabado"],
      definition:
          "Proceso de abrillantamiento de una superficie mediante fricción para lograr un acabado suave y brillante.",
      commonProducts: [
        "Piezas metálicas con superficies reflectantes",
        "espejos"
      ],
      machineryAndEquipment: "Pulidoras, compuestos de pulido",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.limpiezaYAcabado,
    ),
    ManufacturingProcess(
      processName: "Punzonado o perforado",
      processNameInEnglish: "Punching",
      categories: ["Corte"],
      definition:
          "Proceso que utiliza un punzón para crear agujeros o cortes en una hoja de metal.",
      commonProducts: [
        "Chapas perforadas",
        "componentes con agujeros precisos"
      ],
      machineryAndEquipment: "Punzonadoras, prensas",
      illustration: "Enlace a la ilustración del proceso",
      videoLink: "Enlace al video del proceso",
      classification: Classification.corte,
    ),
  ];

  String _searchQuery = '';

  bool get isDesktop {
    final double width = MediaQuery.of(context).size.width;
    // Define el punto de corte para desktop
    return width > 600;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isDesktop ? _buildDesktopView() : _mobileView(),
    );
  }

  Widget _mobileView() {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          'Mobile view aun no soportada',
          style: TextStyle(
            fontSize: 16, // Ajusta el tamaño de la fuente según necesites
            fontWeight: FontWeight.bold, color: Colors.black,
          ),
        ),
      ),
    ); // Vista móvil como contenedor blanco
  }

  Widget _buildDesktopView() {
    return Stack(
      children: [
        Positioned(
          right: 20,
          bottom: 20,
          child: _buildCredits(),
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width *
                0.5, // Ajuste el ancho según necesidad
            child: Column(
              children: [
                const Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                const Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      'Procesos de manufactura',
                      style: TextStyle(
                        fontSize:
                            30, // Ajusta el tamaño de la fuente según necesites
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Buscar Proceso',
                      icon: const Icon(Icons.search),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Ajusta para bordes más o menos redondeados
                        borderSide: BorderSide.none, // Elimina el borde
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _searchQuery = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: ListView.builder(
                    itemCount: processes.length,
                    itemBuilder: (BuildContext context, int index) {
                      final process = processes[index];
                      if (_searchQuery.isEmpty ||
                          process.processName
                              .toLowerCase()
                              .contains(_searchQuery.toLowerCase())) {
                        return MaterialListTile(
                          title: process.processName,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProcessViewTemplate(
                                  process: process,
                                ),
                              ),
                            );
                          },
                        );
                      }
                      return const SizedBox
                          .shrink(); // No muestra nada si no coincide con la búsqueda
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCredits() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Integrantes de equipo:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('Alejandro Apodaca Cordova'),
        Text('Gael Calderon Robles'),
        Text('Luis Reyes'),
        Text('Omar Toledo'),
        SizedBox(height: 8), // Espacio opcional entre secciones
        Text(
          'Programado por:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('Alejandro Apodaca Cordova'),
      ],
    );
  }
}

class MaterialListTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MaterialListTile({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(
          Icons.arrow_right,
        ),
        onTap: onTap,
      ),
    );
  }
}
