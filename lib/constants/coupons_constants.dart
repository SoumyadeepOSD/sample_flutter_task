class CouponsConstants {
  late String title, description, validity, code, image;
  CouponsConstants({
    required this.title,
    required this.description,
    required this.validity,
    required this.code,
    required this.image,
  });
}

List<CouponsConstants> coupons = [
  CouponsConstants(
    title: "MACDONALDS",
    description: "40% OFF",
    validity: "Valid till 15 April",
    code: "XYRE-TEXH-ADTE",
    image: "src/images/mcd_logo.png",
  ),
  CouponsConstants(
    title: "STARBUCKS",
    description: "Buy 1 Get 1",
    validity: "Valid till 15 April",
    code: "XYRE-TEXH-ADTE",
    image: "src/images/starbucks_logo.png",
  ),
  CouponsConstants(
    title: "KFC",
    description: "Upto 25% OFF",
    validity: "Valid till 15 April",
    code: "XYRE-TEXH-ADTE",
    image: "src/images/kfc_logo.png",
  ),
];
