import 'package:flutter/material.dart';

import '../../data/processes.dart';
import '../../models/manufacturing_process_model.dart';
import '../process_view_template.dart';

class ProcessDashboard extends StatefulWidget {
  static const String id = "/dashboard";

  @override
  _ProcessDashboardState createState() => _ProcessDashboardState();
}

class _ProcessDashboardState extends State<ProcessDashboard> {
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
                  child: _buildProcessList(),
                  // ListView.builder(
                  //   itemCount: processes.length,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     final process = processes[index];
                  //     if (_searchQuery.isEmpty ||
                  //         process.processName.toLowerCase().contains(
                  //           _searchQuery.toLowerCase(),
                  //         )) {
                  //       return MaterialListTile(
                  //         title: process.processName,
                  //         onTap: () {
                  //           Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //               builder: (context) => ProcessViewTemplate(
                  //                 process: process,
                  //               ),
                  //             ),
                  //           );
                  //         },
                  //       );
                  //     }
                  //     return const SizedBox
                  //         .shrink(); // No muestra nada si no coincide con la búsqueda
                  //   },
                  // ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProcessList() {
    var groupedProcesses = _groupProcesses(processes);

    return ListView.builder(
      itemCount: groupedProcesses.keys.length,
      itemBuilder: (context, index) {
        Classification classification = groupedProcesses.keys.elementAt(index);
        String classificationKey = classificationToString(classification);
        var processList = groupedProcesses[classification]!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                classificationKey, // Utiliza la clave de clasificación legible
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...processList.map((process) {
              if (_searchQuery.isEmpty ||
                  process.processName
                      .toLowerCase()
                      .contains(_searchQuery.toLowerCase())) {
                return MaterialListTile(
                  title:
                      "${process.processName} (${process.processNameInEnglish})",
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
              return const SizedBox.shrink();
            }).toList(),
          ],
        );
      },
    );
  }

  Map<dynamic, List<ManufacturingProcess>> _groupProcesses(
      List<ManufacturingProcess> processes) {
    var grouped = <dynamic, List<ManufacturingProcess>>{};

    // Agrupar por clasificación
    for (var classification in Classification.values) {
      grouped[classification] = processes
          .where((process) => process.classification == classification)
          .toList();
    }

    // Ordenar cada grupo alfabéticamente
    for (var group in grouped.values) {
      group.sort((a, b) => a.processName.compareTo(b.processName));
    }

    return grouped;
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
