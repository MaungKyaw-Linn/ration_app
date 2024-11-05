class SubDepartmentModel {
  final int? subDepartmentId;
  final String? subDepartmentName;
  SubDepartmentModel({
    this.subDepartmentId,
    this.subDepartmentName,
  });

  // Convert a Subdepartmentmodel  object into a map for storing in the database
  Map<String, dynamic> toMap() {
    return {
      'subDepartmentId': subDepartmentId,
      'subDepartmentName': subDepartmentName,
    };
  }

// Create a Subdepartment  object from a map (retrieved from the database)
  factory SubDepartmentModel.fromMap(Map<String, dynamic> map) {
    return SubDepartmentModel(
        subDepartmentId: map['subDepartmentId'],
        subDepartmentName: map['subDepartmentName']);
  }
}
