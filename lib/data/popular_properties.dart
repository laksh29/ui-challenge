import '../constants/image_links.dart';
import 'models/house_model.dart';

List<HouseModel> popularProperties = [
  HouseModel(
    name: "45115 Raina Views",
    description:
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
    roomMeet: 1,
    stars: 3,
    pricePerMonth: 210,
    interiorImage: List.generate(3, (index) => interiorImages[0]),
    outImage: outImages[0],
    mapImage:
        "https://miro.medium.com/v2/resize:fit:1400/1*qYUvh-EtES8dtgKiBRiLsA.png",
  ),
  HouseModel(
    name: "608 Kshlerin Fords",
    description:
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
    roomMeet: 1,
    stars: 4,
    pricePerMonth: 310,
    interiorImage: List.generate(5, (index) => interiorImages[index + 1]),
    outImage: outImages[1],
    mapImage:
        "https://miro.medium.com/v2/resize:fit:1400/1*qYUvh-EtES8dtgKiBRiLsA.png",
  ),
  HouseModel(
    name: "37673 Siu Estate",
    description:
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
    roomMeet: 2,
    stars: 3,
    pricePerMonth: 210,
    interiorImage: List.generate(6, (index) => interiorImages[index + 2]),
    outImage: outImages[2],
    mapImage:
        "https://miro.medium.com/v2/resize:fit:1400/1*qYUvh-EtES8dtgKiBRiLsA.png",
  ),
  HouseModel(
    name: "2017 Jeannie Square",
    description:
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
    roomMeet: 2,
    stars: 4,
    pricePerMonth: 410,
    interiorImage: List.generate(2, (index) => interiorImages[index + 3]),
    outImage: outImages[3],
    mapImage:
        "https://miro.medium.com/v2/resize:fit:1400/1*qYUvh-EtES8dtgKiBRiLsA.png",
  ),
  HouseModel(
    name: "1676 Vandervort Bypass",
    description:
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
    roomMeet: 1,
    stars: 5,
    pricePerMonth: 510,
    interiorImage: List.generate(3, (index) => interiorImages[index + 4]),
    outImage: outImages[4],
    mapImage:
        "https://miro.medium.com/v2/resize:fit:1400/1*qYUvh-EtES8dtgKiBRiLsA.png",
  ),
];
