import 'Personal.dart';
import 'medico.dart';
import 'enfermeros.dart';
import 'dart:math';

class Hospital {
    List<Personal> trabajadores = [];
    void agregarTrabajador(Personal trabajador){
        trabajadores.add(trabajador);
        print('Trabajador ${trabajador.getNombre()}');
    }

    void mostrarTrabajadores(){
        if (trabajadores.isEmpty) {
          print('error');
          return;
        }
        for (var i = 0; i < trabajadores.length; i++) {
          print('\n========== Trabajador ${i + 1} ==========');
          trabajadores[i].mostrarInformacion();
        }
    }

    double mostrarSalariosAltos(double salarioMinimo){
        double total = 0;
        for (var trabajador in trabajadores) {
        if (trabajador.getSalario() > salarioMinimo) {
            total += trabajador.getSalario();
        }
    }
    return total;
    }


    void mostrarMedicos() {
        for (var i = 0; i < trabajadores.length; i++) {
        if (trabajadores[i] is Medico) {
            print('\n========== Médico ${i + 1} ==========');
            trabajadores[i].mostrarInformacion();
            }
        }
    }

    void mostrarTurnoNoche() {
        for (var i = 0; i < trabajadores.length; i++) {
        if (trabajadores[i] is Enfermeros) {
            var enfermero = trabajadores[i] as Enfermeros;
            if (enfermero.getTurno() == "Noche") {
                print('\n========== Enfermero ${i + 1} ==========');
                enfermero.mostrarInformacion();
            }
        }
        }
    }

    void aumentarSalario() {
    for (var trabajador in trabajadores) {
        double salarioActual = trabajador.getSalario();
        double nuevoSalario = salarioActual;

    if (salarioActual < 3000000) {
      nuevoSalario = salarioActual * 1.12;
    } else if (salarioActual >= 3000000 && salarioActual <= 5000000) {
      nuevoSalario = salarioActual * 1.08;
    } else if (salarioActual > 5000000) {
      nuevoSalario = salarioActual * 1.05;
    }

    trabajador.setSalario(nuevoSalario);
    print("Nuevo salario de ${trabajador.getNombre()}: $nuevoSalario");
    }
    }

    void contarTrabajadores(){
        int medicos = 0;
        int enfermeros = 0;

        for (var i = 0; i < trabajadores.length; i++){
            if (trabajadores[i] is Medico) {
                medicos= i + medicos;
            }else if(trabajadores[i] is Enfermeros){
                enfermeros= i + enfermeros;
            }
        }
        var total= medicos + enfermeros;
        print('El total de medicos son $medicos y el de enfermeros es $enfermeros , Total: $total');
    }

    void mostrarMayorSalario() {
        if (trabajadores.isEmpty) {
        print("No hay trabajadores registrados");
        return;
    }

    Personal mayor = trabajadores[0]; // asumimos el primero como referencia

    for (var trabajador in trabajadores) {
      if (trabajador.getSalario() > mayor.getSalario()) {
      mayor = trabajador;
      }
    }

  print("\n===== Trabajador con mayor salario =====");
  mayor.mostrarInformacion();
  }

  void otorgarBono() {
  for (var trabajador in trabajadores) {
    if (trabajador is Medico) {
      if (trabajador.getPacientesAtendidos() > 100) {
        double salarioActual = trabajador.getSalario();
        double nuevoSalario = salarioActual + 800000;

        trabajador.setSalario(nuevoSalario);
        print('Salario actual era $salarioActual. Se otorgó un bono de 800000. Nuevo salario: $nuevoSalario');
      }
    }

    if (trabajador is Enfermeros) {
      if (trabajador.getHabitacionesAsignadas() > 25) {
        double salarioActual = trabajador.getSalario();
        double nuevoSalario = salarioActual + 500000;

        trabajador.setSalario(nuevoSalario);
        print('Salario actual era $salarioActual. Se otorgó un bono de 500000. Nuevo salario: $nuevoSalario');
      }
    }
  }
}




}