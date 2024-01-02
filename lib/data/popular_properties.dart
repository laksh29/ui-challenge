import '../constants/image_links.dart';
import 'models/house_model.dart';

List<HouseModel> popularProperties = [
  HouseModel(
    name: "45115 Raina Views",
    description: "",
    roomMeet: 1,
    stars: 3,
    pricePerMonth: 210,
    interiorImage: List.generate(3, (index) => interiorImages[0]),
    outImage: outImages[0],
    mapImage: "mapImage",
  ),
  HouseModel(
    name: "608 Kshlerin Fords",
    description: "",
    roomMeet: 1,
    stars: 4,
    pricePerMonth: 310,
    interiorImage: List.generate(5, (index) => interiorImages[index + 1]),
    outImage: outImages[1],
    mapImage: "mapImage",
  ),
  HouseModel(
    name: "37673 Siu Estate",
    description: "",
    roomMeet: 2,
    stars: 3,
    pricePerMonth: 210,
    interiorImage: List.generate(6, (index) => interiorImages[index + 2]),
    outImage: outImages[2],
    mapImage: "mapImage",
  ),
  HouseModel(
    name: "2017 Jeannie Square",
    description: "",
    roomMeet: 2,
    stars: 4,
    pricePerMonth: 410,
    interiorImage: List.generate(2, (index) => interiorImages[index + 3]),
    outImage: outImages[3],
    mapImage: "mapImage",
  ),
  HouseModel(
    name: "1676 Vandervort Bypass",
    description: "",
    roomMeet: 1,
    stars: 5,
    pricePerMonth: 510,
    interiorImage: List.generate(3, (index) => interiorImages[index + 4]),
    outImage: outImages[4],
    mapImage: "mapImage",
  ),
];
