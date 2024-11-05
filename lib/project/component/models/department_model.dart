class DepartmentModel {
  final int? departmentId;
  final String? departmentName;
  DepartmentModel({
    this.departmentId,
    this.departmentName,
  });
  Map<String, dynamic> toMap() {
    return {
      'departmentId': departmentId,
      'departmentName': departmentName,
    };
  }

  DepartmentModel.fromMap(Map<String, dynamic> map)
      : departmentId = map['departmentId'],
        departmentName = map['departmentName'];
  DepartmentModel copyWith({
    int? departmentId,
    String? departmentName,
  }) =>
      DepartmentModel(
        departmentId: departmentId,
        departmentName: departmentName,
      );
}
