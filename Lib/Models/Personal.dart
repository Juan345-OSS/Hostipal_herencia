class Personal {
  String _cedula;
  String _nombre;
  int _edad;
  double _salario;

  Personal(String cedula, String nombre, int edad, double salario): _cedula=cedula, _nombre=nombre, _edad=edad, _salario=salario;

  void setCedula(String valor){
    if (valor.isEmpty) {
      print('error');
    }else{
      _cedula=valor;
    }
  }
  String getCedula()=> this._cedula;

  void setNombre(String nombre){
    if (nombre.isEmpty) {
      print('error');
    } else {
      _nombre=nombre;
    }
  }
  String getNombre()=> this._nombre;

  void setEdad(int valor){
    if (valor >= 18 && valor <= 70) {
      print('Edad Valida');
      _edad=valor;
    } else {
      print('error');
    }
  }
  int getEdad()=> this._edad;

  void setSalario(double valor){
    if (valor>0) {
      print('salario valido');
      _salario=valor;
    } else {
      print('error');
    }
  }
  double getSalario()=> this._salario;

  void mostrarInformacion(){
    print('La Cedula es: ${getCedula()}');
    print('El Nombre es: ${getNombre()}');
    print('La Edad es: ${getEdad()}');
    print('El Salario es: ${getSalario()}');
  }
}