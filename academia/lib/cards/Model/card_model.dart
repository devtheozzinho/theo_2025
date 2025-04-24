class DetailsCar {
  int? id;
  int? portas;
  String? placa;
  bool? automatico;
  bool? arcondicionado;
  bool? vidroletrico;
  int? lugares;
  bool? freioabs;

  DetailsCar(
      {this.arcondicionado,
      this.automatico,
      this.freioabs,
      this.id,
      this.lugares,
      this.placa,
      this.portas,
      this.vidroletrico});

  factory DetailsCar.fromJson(Map<String, dynamic> json) {
    return DetailsCar(
      id: json['id'],
      portas: json['portas'],
      placa: json['placa'],
      automatico: json['automatico'],
      arcondicionado: json['arcondicionado'],
      vidroletrico: json['travaeletrica'],
      lugares: json['lugares'],
      freioabs: json['freioabs'],
    );
  }
}

void main() {
  DetailsCar detalhes = DetailsCar(
      portas: 4,
      placa: 'ABC123',
      automatico: true,
      arcondicionado: true,
      vidroletrico: true,
      lugares: 4,
      freioabs: true);

  List<String> detalhe = [];

  if (detalhes.freioabs == true) detalhe.add('Freio ABS');
  if (detalhes.lugares == 4) detalhe.add('Lugares: 4');
  if (detalhes.placa == 'ABC123') detalhe.add('Placa: ABC123');
  if (detalhes.arcondicionado == true) detalhe.add('Ar-condicionado');
  if (detalhes.vidroletrico == true) detalhe.add('Trava elétrica');
  if (detalhes.automatico == true) detalhe.add('Automático');
  if (detalhes.portas == 4) detalhe.add('4 portas');
}
