class HomeTrainingType {
  int? id;
  String? title;
  String? imageUrl;

  HomeTrainingType({this.id, this.title, this.imageUrl});

  HomeTrainingType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['title'] = title;
    data['image_url'] = imageUrl;
    return data;
  }
}
