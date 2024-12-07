class Dates {
  Dates({
      this.maximum, 
      this.minimum,
  });

  String? maximum;
  String? minimum;

  Dates.fromJson(dynamic json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maximum'] = maximum;
    map['minimum'] = minimum;
    return map;
  }

}