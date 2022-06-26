class ProfileDataModel {
  int? id;
  String? profile;
  int? contact;
  String? address;
  String? user;
  int? shopName;

  ProfileDataModel(
      {this.id,
        this.profile,
        this.contact,
        this.address,
        this.user,
        this.shopName});

  ProfileDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profile = json['profile'];
    contact = json['contact'];
    address = json['address'];
    user = json['user'];
    shopName = json['shopName'];
  }
}