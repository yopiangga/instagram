class MStatus {
  String name;
  bool verified;
  String image;
  String caption;
  List<String> likes = [];
  List<String> tags = [];
  List<dynamic> comments = [{}];
  MStatus({
    this.name = "",
    this.verified = false,
    this.image = "",
    this.caption = "",
  });
}
