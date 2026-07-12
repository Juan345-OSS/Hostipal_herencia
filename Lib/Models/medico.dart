import 'Personal.dart';

class Medico extends Personal {
  String _especialidad;
  int _pacientesAtendidos;

  Medico(String especialidad, int pacientesAtendidos, super.cedula, super.nombre, super.edad, super.salario): _especialidad=especialidad, _pacientesAtendidos=pacientesAtendidos;

  void setEspecialidad(String valor){
    if (valor.isEmpty) {
      print('error');
    } else {
      _especialidad=valor;
    }
  }
  String getEspecialidad()=> this._especialidad;

  void setPacientesAtendidos(int valor){
    if (valor >= 0) {
      print('esta atendiendo pacientes');
      _pacientesAtendidos=valor;
    }else{
      print('no atiende pacientes');
    }
  }
  int getPacientesAtendidos()=> this._pacientesAtendidos;

  @override
  void mostrarInformacion() {
    // TODO: implement mostrarInformacion
    super.mostrarInformacion();
    print('La especialidad es: ${getEspecialidad()}');
    print('Pacientes Atendidos: ${getPacientesAtendidos()}');
  }
}
