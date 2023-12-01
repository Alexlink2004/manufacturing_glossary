import '../models/manufacturing_process_model.dart';

List<ManufacturingProcess> processes = [
  //Parte 3:
  ManufacturingProcess(
    illustration: "assets/Alodine.png",
    processName: "Alodine",
    processNameInEnglish: "Alodine",
    categories: ["Limpieza y acabado"],
    definition:
        "Tratamiento químico que aplica una capa protectora sobre el aluminio para mejorar la adhesión de la pintura y la resistencia a la corrosión.",
    commonProducts: [
      "Componentes aeronáuticos",
      "partes de vehículos",
      "hardware"
    ],
    machineryAndEquipment: "Tanques de inmersión, cabinas de pulverización",
    videoLink: "https://youtube.com/shorts/wB6P184U-Yg?si=K3wRMLkG7Ie7wY3B",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    illustration: "assets/Anodizado.jpg",
    processName: "Anodizado",
    processNameInEnglish: "Anodizing",
    categories: ["Limpieza y acabado"],
    definition:
        "Proceso electroquímico que convierte la superficie del metal, típicamente aluminio, en un óxido anódico duradero y resistente a la corrosión.",
    commonProducts: [
      "Carcasas de electrónicos",
      "componentes arquitectónicos",
      "joyería"
    ],
    machineryAndEquipment: "Baños electrolíticos, rectificadores de corriente",
    videoLink: "https://youtube.com/shorts/wB6P184U-Yg?si=K3wRMLkG7Ie7wY3B",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    illustration: "assets/Galvanizado.png",
    processName: "Galvanizado",
    processNameInEnglish: "Galvanizing",
    categories: ["Limpieza y acabado"],
    definition:
        "Proceso de aplicación de una capa de zinc sobre el acero o hierro para prevenir la oxidación y corrosión.",
    commonProducts: ["Estructuras de construcción", "tuberías", "alambrados"],
    machineryAndEquipment:
        "Hornos de galvanizado, tanques de inmersión en zinc fundido",
    videoLink: "https://www.youtube.com/watch?v=yFElu7SuV2s",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    illustration: "assets/LimpiezaConChorroAbrasivo.jpg",
    processName: "Limpieza con chorro abrasivo",
    processNameInEnglish: "Abrasive Blasting",
    categories: ["Limpieza y acabado"],
    definition:
        "Método de limpieza que utiliza materiales abrasivos proyectados a alta velocidad para limpiar o modificar la superficie de un material.",
    commonProducts: [
      "Superficies metálicas preparadas para revestimiento",
      "limpieza de fachadas"
    ],
    machineryAndEquipment: "Cabinas de chorro abrasivo, compresores de aire",
    videoLink: "https://www.youtube.com/watch?v=8RngVj69Syo",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    illustration: "assets/LimpiezaConSolventes.jpg",
    processName: "Limpieza con solventes",
    processNameInEnglish: "Solvent Cleaning",
    categories: ["Limpieza y acabado"],
    definition:
        "Uso de solventes químicos para disolver grasa, aceites y otros contaminantes de las superficies.",
    commonProducts: ["Piezas metálicas", "componentes electrónicos"],
    machineryAndEquipment: "Tanques de desengrase, equipos de ultrasonido",
    videoLink: "https://www.youtube.com/watch?v=bhndtHbVMow",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    illustration: "assets/LimpiezaEnMasaOTambor.jpg",
    processName: "Limpieza en masa o tambor",
    processNameInEnglish: "Mass or Drum Cleaning",
    categories: ["Limpieza y acabado"],
    definition:
        "Proceso de limpieza donde las piezas se colocan en un tambor giratorio que utiliza fricción y abrasión para limpiar.",
    commonProducts: ["Componentes pequeños, como tornillos y herrajes"],
    machineryAndEquipment: "Tambores giratorios, máquinas de acabado en masa",
    videoLink: "https://www.youtube.com/watch?v=huPphJb_WG0",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    illustration: "assets/LimpiezaUltrasonica.jpg",
    processName: "Limpieza ultrasónica",
    processNameInEnglish: "Ultrasonic Cleaning",
    categories: ["Limpieza y acabado"],
    definition:
        "Uso de ondas ultrasónicas en un líquido para limpiar detalladamente componentes delicados.",
    commonProducts: [
      "Instrumentos quirúrgicos",
      "componentes ópticos",
      "joyería"
    ],
    machineryAndEquipment: "Baños ultrasónicos, generadores de ultrasonido",
    videoLink: "https://youtube.com/shorts/vtpJZWqCFiw?si=9YVGM0Ub0_Y_xDK5",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    illustration: "assets/PegadoConAdhesivo.jpeg",
    processName: "Pegado con Adhesivos",
    processNameInEnglish: "Adhesive Bonding",
    categories: ["Unión y Ensamble"],
    definition:
        "Unión de dos superficies utilizando sustancias adhesivas que pueden ser epoxis, cianoacrilatos, entre otros.",
    commonProducts: ["Muebles", "dispositivos electrónicos", "automóviles"],
    machineryAndEquipment: "Dispensadores de adhesivo, prensas de curado",
    videoLink: "https://www.youtube.com/watch?v=ksZ67Ul2Q3c",
    classification: Classification.unionYEnsamble,
  ),
  ManufacturingProcess(
    illustration: "assets/Perdigonado.png",
    processName: "Perdigonado",
    processNameInEnglish: "Shot Peening",
    categories: ["Fundición, Moldeo o Colado"],
    definition:
        "Proceso que consiste en vaciar metal fundido en un tamiz y enfriarlo dejándolo caer en agua. En este proceso se obtienen partículas esféricas o con forma de pera.",
    commonProducts: [
      "Perdigones para municiones",
      "esferas para cojinetes",
      "partículas para pulido o chorreado"
    ],
    machineryAndEquipment:
        "Tamices para perdigonado, sistemas de vertido de metal fundido, tanques o cámaras de enfriamiento con agua",
    videoLink: "https://www.youtube.com/watch?v=wc5wl1ENZuA",
    classification: Classification.fundicionMoldeoColado,
  ),
  ManufacturingProcess(
    illustration: "assets/Recocido.png",
    processName: "Recocido",
    processNameInEnglish: "Annealing",
    categories: ["Tratamientos térmicos"],
    definition:
        "Proceso térmico en el cual un material, típicamente metal, se calienta a una temperatura específica y luego se enfría lentamente para aliviar tensiones y mejorar la estructura cristalina.",
    commonProducts: [
      "Alambre de acero",
      "tubos de cobre",
      "piezas de automóviles"
    ],
    machineryAndEquipment:
        "Hornos de recocido, sistemas de enfriamiento controlado",
    videoLink: "https://www.youtube.com/watch?v=dUv1osIYPak",
    classification: Classification.tratamientosTermicos,
  ),

  //Parte 2:
  ManufacturingProcess(
    processName: "Abocardado",
    processNameInEnglish: "Flaring",
    categories: ["Maquinado"],
    definition:
        "Proceso que ensancha el extremo de un tubo para permitir su conexión con otro tubo.",
    commonProducts: ["Tubos ensanchados", "conexiones de tubería"],
    machineryAndEquipment: "Abocardadoras, herramientas de ensanche",
    illustration:
        "assets/Abocardado.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://www.youtube.com/watch?v=4gJdyFhS4Qo",
    classification: Classification.maquinado,
  ),
  ManufacturingProcess(
    processName: "Acuñado",
    processNameInEnglish: "Coining",
    categories: ["Formado Mecánico"],
    definition:
        "Proceso de formado que utiliza troqueles y presión para formar metal en una forma deseada.",
    commonProducts: ["Monedas", "medallas", "componentes de precisión"],
    machineryAndEquipment: "Prensas, troqueles",
    illustration:
        "assets/Acunado.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://www.youtube.com/watch?v=Wy2Lv-WN53g",
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
    illustration:
        "assets/Avellanado.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://youtube.com/shorts/BFUCkp7PRnA?si=lam6kieQQwKq6yKr",
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
    illustration:
        "assets/Calandrado.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://www.youtube.com/watch?v=rPJ3al9eAcI",
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
    illustration:
        "assets/Cizallado.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://www.youtube.com/watch?v=SQmQK0HI-dU",
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
    illustration:
        "assets/Colado.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://www.youtube.com/watch?v=fKJmVfj6pDM",
    classification: Classification.fundicionMoldeoColado,
  ),
  ManufacturingProcess(
    processName: "Corrugado (plegado)",
    processNameInEnglish: "Corrugating (Folding)",
    categories: ["Formado mecánico"],
    definition:
        "Proceso que crea ondulaciones en las láminas metálicas para aumentar su rigidez.",
    commonProducts: ["Paneles de techado", "envases", "ductos"],
    machineryAndEquipment: "Máquinas corrugadoras, prensas",
    illustration:
        "assets/Corrugado.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://youtube.com/shorts/NRom5zwaf4k?si=F-9Fj4FusYSGiD3t",
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
    illustration:
        "assets/CorteConFlama.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://youtube.com/shorts/ag7IdYX45Sw?si=0vB4LsHDUGFRRcDt",
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
    illustration:
        "assets/CortePorAgua.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://www.youtube.com/watch?v=brQCnFY2vWA",
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
    illustration:
        "assets/Cromado.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://www.youtube.com/watch?v=H1AhmPIG4rw",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    processName: "Embutido",
    processNameInEnglish: "Embossing",
    categories: ["Formado Mecánico"],
    definition:
        "Proceso que consiste en estampar un metal para crear una pieza hueca o un relieve profundo.",
    commonProducts: ["Ollas", "lavabos", "componentes automotrices huecos"],
    machineryAndEquipment: "Prensas de estampado, troqueles de embutición",
    illustration:
        "assets/Embutido.png", // Puedes proporcionar la URL de una imagen ilustrativa si lo deseas.
    videoLink: "https://www.youtube.com/watch?v=8_6-Xp-eO10",
    classification: Classification.formadoMecanico,
  ),

  //Parte 1:

  ManufacturingProcess(
    processName: "Aserrado (corte con sierra)",
    processNameInEnglish: "Sawing",
    categories: ["Corte"],
    definition:
        "Proceso de dividir material mediante el uso de una sierra dentada.",
    commonProducts: [
      "Piezas de madera dimensionadas",
      "secciones de tubería metálica",
      "paneles de plástico cortados"
    ],
    machineryAndEquipment:
        "Sierras de banda, sierras circulares, sierras de calar",
    illustration: "assets/Aserrado.png",
    videoLink: "https://www.youtube.com/watch?v=zSh3b_pwCqk",
    classification: Classification.corte,
  ),
  ManufacturingProcess(
    processName: "Cepillado",
    processNameInEnglish: "Planing",
    categories: ["Limpieza y acabado"],
    definition:
        "Proceso de acabado superficial que utiliza una herramienta de corte para remover capas delgadas de material.",
    commonProducts: [
      "Superficies metálicas planas",
      "tablas de madera uniformes"
    ],
    machineryAndEquipment: "Cepilladoras, máquinas de cepillado",
    illustration: "assets/Cepillado.png",
    videoLink: "https://www.youtube.com/watch?v=RkeVMNB2yw4",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    processName: "Doblado",
    processNameInEnglish: "Bending",
    categories: ["Formado Mecánico"],
    definition:
        "Deformación de materiales en ángulos específicos sin eliminar material.",
    commonProducts: [
      "Tubos y conductos doblados",
      "componentes metálicos de construcción",
      "piezas de mobiliario"
    ],
    machineryAndEquipment: "Prensas de doblado, máquinas dobladoras de tubos",
    illustration: "assets/Doblado.png",
    videoLink: "https://www.youtube.com/watch?v=vRazyDJrN_M",
    classification: Classification.formadoMecanico,
  ),
  ManufacturingProcess(
    processName: "Esmerilado",
    processNameInEnglish: "Grinding",
    categories: ["Limpieza y acabado"],
    definition:
        "Proceso de abrasión para refinar la superficie de un objeto utilizando una rueda giratoria.",
    commonProducts: [
      "Herramientas con bordes afilados",
      "piezas metálicas con superficies lisas"
    ],
    machineryAndEquipment:
        "Esmeriladoras de banco, esmeriladoras de superficie",
    illustration: "assets/Esmerilado.png",
    videoLink: "https://youtube.com/shorts/6Xjb0CNuRB0?si=Rt9cna4ippAPaRMK",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    processName: "Estirado",
    processNameInEnglish: "Drawing",
    categories: ["Formado Mecánico"],
    definition:
        "Extensión de metal a través de un troquel para reducir su sección transversal.",
    commonProducts: ["Alambre", "tubos delgados", "varillas"],
    machineryAndEquipment: "Máquinas de estirado, prensas",
    illustration: "assets/Estirado.png",
    videoLink: "https://www.youtube.com/watch?v=Gun6UxLiArw",
    classification: Classification.formadoMecanico,
  ),
  ManufacturingProcess(
    processName: "Extrusión",
    processNameInEnglish: "Extrusion",
    categories: ["Formado Mecánico"],
    definition:
        "Proceso donde un material se empuja a través de un orificio para crear objetos con sección transversal constante.",
    commonProducts: ["Tubos plásticos", "perfiles de aluminio", "cables"],
    machineryAndEquipment:
        "Extrusoras de plástico, prensas de extrusión para metales",
    illustration: "assets/Extrusion.png",
    videoLink: "https://www.youtube.com/watch?v=Y75IQksBb0M",
    classification: Classification.formadoMecanico,
  ),
  ManufacturingProcess(
    processName: "Forjado",
    processNameInEnglish: "Forging",
    categories: ["Formado Mecánico"],
    definition:
        "Conformado de metal mediante golpes o presión, mejorando sus propiedades mecánicas.",
    commonProducts: ["Bielas", "engranajes", "herramientas manuales"],
    machineryAndEquipment: "Martillos de forja, prensas de forjado",
    illustration: "assets/Forjado.png",
    videoLink: "https://www.youtube.com/watch?v=P3n1CJqTAtU",
    classification: Classification.formadoMecanico,
  ),
  ManufacturingProcess(
    processName: "Fresado",
    processNameInEnglish: "Milling",
    categories: ["Maquinado"],
    definition:
        "Proceso de corte en el que una herramienta giratoria con múltiples filos cortantes remueve material para formar una pieza.",
    commonProducts: [
      "Piezas mecanizadas",
      "engranajes",
      "componentes de precisión"
    ],
    machineryAndEquipment: "Fresadoras, centros de mecanizado CNC",
    illustration: "assets/Fresado.png",
    videoLink: "https://www.youtube.com/watch?v=ynmjwmhbpSM",
    classification: Classification.maquinado,
  ),
  ManufacturingProcess(
    processName: "Fundición centrífuga",
    processNameInEnglish: "Centrifugal Casting",
    categories: ["Fundición, Moldeo o Colado"],
    definition:
        "Método de fundición donde el metal fundido se vierte en un molde rotativo para producir piezas con simetría radial.",
    commonProducts: ["Bujes", "ruedas", "tubos"],
    machineryAndEquipment: "Máquinas de fundición centrífuga, hornos",
    illustration: "assets/FundicionCentrifuga.png",
    videoLink: "https://www.youtube.com/watch?v=_ChL0tmfmj0",
    classification: Classification.fundicionMoldeoColado,
  ),
  ManufacturingProcess(
    processName: "Fundición en arena",
    processNameInEnglish: "Sand Casting",
    categories: ["Fundición, Moldeo o Colado"],
    definition:
        "Técnica de fundición que utiliza un molde de arena para formar piezas metálicas complejas.",
    commonProducts: ["Bloques de motor", "carcasas de bombas", "manifolds"],
    machineryAndEquipment:
        "Cajas de moldeo, mezcladoras de arena, hornos de fundición",
    illustration: "assets/SandCasting.png",
    videoLink: "https://www.youtube.com/watch?v=xcrwVTkXDEU",
    classification: Classification.fundicionMoldeoColado,
  ),
  ManufacturingProcess(
    processName: "Inyección",
    processNameInEnglish: "Injection Molding",
    categories: ["Fundición, Moldeo o Colado"],
    definition:
        "Proceso de fabricación para producir piezas mediante la inyección de material fundido en un molde.",
    commonProducts: [
      "Carcasas de plástico",
      "componentes automotrices",
      "juguetes"
    ],
    machineryAndEquipment:
        "Máquinas de moldeo por inyección, moldes de inyección",
    illustration: "assets/Inyeccion.png",
    videoLink: "https://www.youtube.com/watch?v=DXdyVSEvFXs",
    classification: Classification.fundicionMoldeoColado,
  ),
  ManufacturingProcess(
    processName: "Laminado",
    processNameInEnglish: "Rolling",
    categories: ["Formado Mecánico"],
    definition:
        "Proceso que pasa el metal entre dos rodillos para reducir su grosor y hacerlo uniforme.",
    commonProducts: ["Planchas de metal", "láminas de acero", "foils"],
    machineryAndEquipment: "Laminadoras, trenes de laminación",
    illustration: "assets/Laminado.png",
    videoLink: "https://www.youtube.com/watch?v=EMdrcN_Edng",
    classification: Classification.formadoMecanico,
  ),
  ManufacturingProcess(
    processName: "Moldeo por compresión",
    processNameInEnglish: "Compression Molding",
    categories: ["Fundición, Moldeo o Colado"],
    definition:
        "Fabricación de objetos sólidos comprimiendo un material en un molde cerrado.",
    commonProducts: [
      "Piezas de caucho",
      "componentes eléctricos",
      "contenedores"
    ],
    machineryAndEquipment: "Prensas de compresión, moldes de compresión",
    illustration: "assets/MoldeoPorCompresion.png",
    videoLink: "https://www.youtube.com/watch?v=xV6Fg1MgBy0",
    classification: Classification.fundicionMoldeoColado,
  ),
  ManufacturingProcess(
    processName: "Moldeo por soplado",
    processNameInEnglish: "Blow Molding",
    categories: ["Fundición, Moldeo o Colado"],
    definition:
        "Creación de piezas huecas insuflando aire en material plástico fundido dentro de un molde.",
    commonProducts: ["Botellas plásticas", "recipientes", "tanques"],
    machineryAndEquipment:
        "Máquinas de moldeo por soplado, compresores de aire",
    illustration: "assets/MoldeoPorSoplado.png",
    videoLink: "https://www.youtube.com/watch?v=H0crHOkaOWc",
    classification: Classification.fundicionMoldeoColado,
  ),
  ManufacturingProcess(
    processName: "Moldeo por transferencia",
    processNameInEnglish: "Transfer Molding",
    categories: ["Fundición, Moldeo o Colado"],
    definition:
        "Proceso similar al moldeo por compresión, pero el material es transferido a un molde caliente.",
    commonProducts: [
      "Conectores eléctricos",
      "partes complejas de plástico o caucho"
    ],
    machineryAndEquipment: "Prensas de transferencia, moldes de transferencia",
    illustration: "assets/MoldeoPorTransferencia.png",
    videoLink: "https://www.youtube.com/watch?v=NqflSxYsPUk",
    classification: Classification.fundicionMoldeoColado,
  ),
  ManufacturingProcess(
    processName: "Rectificado",
    processNameInEnglish: "Grinding",
    categories: ["Limpieza y acabado"],
    definition:
        "Proceso de acabado de piezas mediante abrasivos para alcanzar dimensiones precisas y superficies suaves.",
    commonProducts: [
      "Herramientas de corte",
      "componentes de motores",
      "engranajes"
    ],
    machineryAndEquipment: "Rectificadoras cilíndricas, rectificadoras planas",
    illustration: "assets/Rectificado.png",
    videoLink: "https://www.youtube.com/watch?v=YHrNSDZLZfo",
    classification: Classification.limpiezaYAcabado,
  ),
  ManufacturingProcess(
    processName: "Rolado",
    processNameInEnglish: "Rolling",
    categories: ["Formado Mecánico"],
    definition:
        "Proceso de deformación en el cual se utiliza rodillos para reducir el espesor o cambiar la sección transversal de un material.",
    commonProducts: ["Chapas metálicas", "perfiles estructurales", "tubos"],
    machineryAndEquipment:
        "Máquinas de rolado, rodillos de conformado, curvadoras de perfiles",
    illustration: "assets/Rolado.png",
    videoLink: "https://www.youtube.com/watch?v=K_EQvxYaq4Q1",
    classification: Classification.formadoMecanico,
  ),
];
