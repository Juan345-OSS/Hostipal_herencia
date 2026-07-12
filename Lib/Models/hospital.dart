import 'Personal.dart';
import 'medico.dart';
import 'enfermeros.dart';

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

    void aumentarSalario(){}


}