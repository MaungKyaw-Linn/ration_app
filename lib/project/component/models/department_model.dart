class DepartmentModel {
  final int? departmentId;
  final String? departmentName;
  DepartmentModel({
    this.departmentId,
    this.departmentName,
  });
  // Convert a DepartmentModel object into a map for storing in the database
  Map<String, dynamic> toMap() {
    return {
      'departmentId': departmentId,
      'departmentName': departmentName,
    };
  }

// Create a DepartmentModel object from a map (retrieved from the database)
  factory DepartmentModel.fromMap(Map<String, dynamic> map) {
    return DepartmentModel(
        departmentId: map['departmentId'],
        departmentName: map['departmentName']);
  }
}
