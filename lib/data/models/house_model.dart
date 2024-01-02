class HouseModel {
  final double stars;
  final int pricePerMonth;
  final String name;
  final String description;
  final int roomMeet;
  final String outImage;
  final List<String> interiorImage;
  final String mapImage;

  HouseModel({
    required this.name,
    required this.description,
    required this.roomMeet,
    required this.stars,
    required this.pricePerMonth,
    required this.outImage,
    required this.interiorImage,
    required this.mapImage,
  });
}
