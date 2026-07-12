import 'Personal.dart';

class Enfermeros extends Personal {
  String _turno;
  int _habitacionesAsignadas;

  Enfermeros(String turno, int habitacionesAsignadas,super.cedula, super.nombre, super.edad, super.salario): _turno=turno, _habitacionesAsignadas=habitacionesAsignadas;

  void setTurno(String valor){
    if (valor=='Manana' || valor=='Tarde' || valor=='Noche') {
      _turno=valor;
    } else {
      print('Error intente de nuevo');
    }
  }
  String getTurno()=> this._turno;

  void setHabitacionesAsignadas(int valor){
    if (valor>= 0) {
      _habitacionesAsignadas=valor;
    } else {
      print('Error Habitaciones');
    }
  }
  int getHabitacionesAsignadas()=> this._habitacionesAsignadas;

  @override
  void mostrarInformacion() {
    // TODO: implement mostrarInformacion
    super.mostrarInformacion();
    print('El Turno es de: ${getTurno()}');
    print('Las Habitaciones Asignadas son: ${getHabitacionesAsignadas()}');
  }
}