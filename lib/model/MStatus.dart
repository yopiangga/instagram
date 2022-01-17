class MStatus {
  String name;
  bool verified;
  String image;
  String imageProfile;
  String caption;
  String location;
  List<String> likes = [];
  List<String> tags = [];
  List<dynamic> comments = [{}];
  MStatus(
      {this.name = "",
      this.verified = false,
      this.image = "",
      this.imageProfile = "",
      this.caption = "",
      this.location = ""});
}
