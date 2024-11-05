class RationModel {
  final int? rationId;
  final String? rationName;
  final double? rate;
  final int? count;
  final String? remark;
  final int? departmentId;
  final int? subDepartmentId;
  final DateTime? firstDate;
  final DateTime? secondDate;
  RationModel({
    this.rationId,
    required this.rationName,
    required this.rate,
    required this.count,
    this.remark,
    this.departmentId,
    this.subDepartmentId,
    this.firstDate,
    this.secondDate,
  });
  Map<String, dynamic> toMap() {
    return {
      'rationId': rationId,
      'rationName': rationName,
      'rate': rate,
      'count': count,
      'remark': remark,
      'departmentId': departmentId,
      'subDepartmentId': subDepartmentId,
      'firstDate': firstDate,
      'secondDate': secondDate,
    };
  }

  RationModel.fromMap(Map<String, dynamic> map)
      : rationId = map['rationId'],
        rationName = map['rationName'],
        rate = double.parse(map['rate']),
        count = map['count'],
        remark = map['remark'],
        departmentId = map['departmentId'],
        subDepartmentId = map['subDepartmentId'],
        firstDate = map['firstDate'],
        secondDate = map['secondDate'];

  RationModel copyWith({
    int? rationId,
    String? rationName,
    double? rate,
    int? count,
    String? remark,
    int? departmentId,
    int? subDepartmentId,
    DateTime? firstDate,
    DateTime? secondDate,
  }) =>
      RationModel(
        rationId: rationId,
        rationName: rationName ?? this.rationName,
        rate: rate ?? this.rate,
        count: count ?? this.count,
        departmentId: departmentId ?? this.departmentId,
        subDepartmentId: subDepartmentId ?? this.subDepartmentId,
        firstDate: firstDate ?? this.firstDate,
        secondDate: secondDate ?? this.secondDate,
      );
}
