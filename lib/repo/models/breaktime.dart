class BreakTime {
  BreakTime.fromJson(Map<String, dynamic> json)
      : tempoBox = json['tempoBox'] ?? '00:00:00',
        isbreak = json['isbreak'] ?? false;

  BreakTime({required this.tempoBox});
  String tempoBox = '00:00:00';
  late int idTB;
  bool isbreak = false;
  String quebrado = '';

  void isBreak() {
    if (isbreak == false) {
      quebrado = 'Não';
    } else {
      quebrado = 'Sim';
    }
  }

  Map<String, dynamic> toJson() {
    return {'tempoBox': tempoBox};
  }

  @override
  String toString() {
    return '{tempo: $tempoBox}';
  }
}
