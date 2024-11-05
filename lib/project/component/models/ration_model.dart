class RationModel {
  final int? ration_id;
  final String? ration_name;
  final double? rate;
  final int? count;
  final String? remark;
  final int? department_id;
  final int? sub_department_id;
  final DateTime? first_date;
  final DateTime? second_date;
  RationModel({
    this.ration_id,
    required this.ration_name,
    required this.rate,
    required this.count,
    this.remark,
    this.department_id,
    this.sub_department_id,
    this.first_date,
    this.second_date,
  });
  Map<String, dynamic> toMap() {
    return {
      'ration_id': ration_id,
      'ration_name': ration_name,
      'rate': rate,
      'count': count,
      'remark': remark,
      'department_id': department_id,
      'sub_department_id': sub_department_id,
      'first_date': first_date,
      'second_date': second_date,
    };
  }

  RationModel.fromMap(Map<String, dynamic> map)
      : ration_id = map['ration_id'],
        ration_name = map['ration_name'],
        rate = double.parse(map['rate']),
        count = map['count'],
        remark = map['remark'],
        department_id = map['department_id'],
        sub_department_id = map['sub_department_id'],
        first_date = map['first_date'],
        second_date = map['second_date'];

  RationModel copyWith({
    int? ration_id,
    String? ration_name,
    double? rate,
    int? count,
    String? remark,
    int? department_id,
    int? sub_department_id,
    DateTime? first_date,
    DateTime? second_date,
  }) =>
      RationModel(
        ration_id: ration_id,
        ration_name: ration_name ?? this.ration_name,
        rate: rate ?? this.rate,
        count: count ?? this.count,
        department_id: department_id ?? this.department_id,
        sub_department_id: sub_department_id ?? this.sub_department_id,
        first_date: first_date ?? this.first_date,
        second_date: second_date ?? this.second_date,
      );
}
