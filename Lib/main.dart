import 'Models/personal.dart';
import 'Models/medico.dart';
import 'Models/enfermeros.dart';
import 'Models/hospital.dart';

void main() {

  // Crear el hospital
  Hospital hospital = Hospital();

  // ==========================
  // Crear Médicos
  // ==========================

  Medico medico1 = Medico(
    'Cirujano General',
    30,
    '1047218634',
    'Juan',
    30,
    10000000,
  );

  Medico medico2 = Medico(
    'Ortopedista',
    50,
    '323445656',
    'Camilo',
    38,
    35000000,
  );

  Medico medico3 = Medico(
    'Pediatra',
    80,
    '34576553322',
    'Fabián',
    43,
    45000000,
  );

  Medico medico4 = Medico(
    'Médico General',
    90,
    '1044665442',
    'Daniel',
    40,
    10000000,
  );

  // ==========================
  // Crear Enfermeros
  // ==========================

  Enfermeros enfermero1 = Enfermeros(
    'Mañana',
    27,
    '10986262424',
    'Camila',
    40,
    2000000,
  );

  Enfermeros enfermero2 = Enfermeros(
    'Noche',
    30,
    '100875426',
    'Juan',
    20,
    3000000,
  );

  Enfermeros enfermero3 = Enfermeros(
    'Tarde',
    40,
    '327555252',
    'Daniela',
    33,
    4000000,
  );

  Enfermeros enfermero4 = Enfermeros(
    'Mañana',
    26,
    '876111161',
    'Esteban',
    34,
    7600000,
  );

  medico1.setSalario(12000000);
  medico2.setPacientesAtendidos(60);
 
  enfermero1.setTurno("Noche");
  enfermero4.setHabitacionesAsignadas(35);

  hospital.agregarTrabajador(medico1);
  hospital.agregarTrabajador(medico2);
  hospital.agregarTrabajador(medico3);
  hospital.agregarTrabajador(medico4);

  hospital.agregarTrabajador(enfermero1);
  hospital.agregarTrabajador(enfermero2);
  hospital.agregarTrabajador(enfermero3);
  hospital.agregarTrabajador(enfermero4);

  // ==========================
  // Ejecutar todos los métodos
  // ==========================

  print("===== TODOS LOS TRABAJADORES =====");
  hospital.mostrarTrabajadores();

  print("\n===== MÉDICOS =====");
  hospital.mostrarMedicos();

  print("\n===== ENFERMEROS TURNO NOCHE =====");
  hospital.mostrarTurnoNoche();

  print("\n===== SALARIOS MAYORES A 4.000.000 =====");
  hospital.mostrarSalariosAltos(4000000);

  print("\n===== AUMENTAR SALARIOS =====");
  hospital.aumentarSalario();

  print("\n===== CONTAR TRABAJADORES =====");
  hospital.contarTrabajadores();

  print("\n===== TRABAJADOR CON MAYOR SALARIO =====");
  hospital.mostrarMayorSalario();

  print("\n===== OTORGAR BONOS =====");
  hospital.otorgarBono();

}