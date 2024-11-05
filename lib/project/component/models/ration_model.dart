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

  // Convert a Ration object into a map for storing in the database
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

  // Create a Ration object from a map (retrieved from the database)
  factory RationModel.fromMap(Map<String, dynamic> map) {
    return RationModel(
        rationId: map['rationId'],
        rationName: map['rationName'],
        rate: double.parse(map['rate']),
        count: map['count'],
        remark: map['remark'],
        departmentId: map['departmentId'],
        subDepartmentId: map['subDepartmentId'],
        firstDate: map['firstDate'],
        secondDate: map['secondDate']);
  }
}
