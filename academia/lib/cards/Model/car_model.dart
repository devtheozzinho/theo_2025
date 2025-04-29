class Car {
  int? id;
  String? placa;
  String? name;
  String? category;
  DetailsCar? detalhes;

  Car({this.detalhes, this.id, this.placa, this.name, this.category});

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
        id: json['id'],
        placa: json['placa'],
        detalhes: DetailsCar.fromJson(json['detalhes']),
        name: json['name'],
        category: json['category']);
  }
}

class DetailsCar {
  bool? freioabs;
  int? lugares;
  bool? arcondicionado;
  bool? vidroletrico;
  bool? automatico;
  int? portas;

  DetailsCar({
    this.arcondicionado,
    this.freioabs,
    this.lugares,
    this.vidroletrico,
    this.automatico,
    this.portas,
  });

  factory DetailsCar.fromJson(Map<String, dynamic> json) {
    return DetailsCar(
      freioabs: json['freioabs'],
      lugares: json['lugares'],
      arcondicionado: json['arcondicionado'],
      vidroletrico: json['vidroletrico'],
      automatico: json['automatico'],
      portas: json['portas'],
    );
  }
}
