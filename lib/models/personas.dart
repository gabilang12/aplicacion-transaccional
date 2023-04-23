class Persona{
  //se requieren atributos y un contructor

  //si se deja asi () = parametros posicionados
  //mejor parametros nombrados {}
  Persona(
    {
      required this.name, 
      required this.id,
      required this.saldo,
      required this.transferencia,
      required this.userName
    }
  );

  String id; //no puede ser nulo --> required
  String name;
  String userName;
  int saldo;
  //para las transferencias es mejor un diccionario clave-valor
  //como se van a realizar varias, es mejor una lista de diccionario (map)
  List<Map<String,dynamic>> transferencia;
}