final itemsInfo = <Info>[
  Info(title: 'Samsung', img: 'assets/samsung-mo.png', phone: [
    BestSellers(
        count: 0,
        title: 'Samsung S21',
        img: 'assets/samsumg-cell.png',
        location: "Calle 13 ave 24.",
        location2: "A lado de maniventas",
        year: 2022,
        price: 499.99,
        priceTotal: 0,
        description:
            "El Samsung Galaxy S21 marca la llegada de la nueva generación de flagships de Samsung para el 2021. El Galaxy S21 cuenta con una pantalla Dynamic AMOLED de 6.2 pulgadas a resolución Full HD"),
    BestSellers(
        count: 0,
        title: 'Samsung Note 20 ',
        img: 'assets/note20.png',
        location: "Calle 13 ave 24.",
        location2: " A lado de maniventas",
        year: 2022,
        priceTotal: 0,
        price: 599.99,
        description:
            "El Samsung Galaxy Note 20 marca la llegada de la nueva generación de flagships de Samsung para el 2021. El Galaxy S21 cuenta con una pantalla Dynamic AMOLED de 6.2 pulgadas a resolución Full HD"),
    BestSellers(
        count: 0,
        title: 'Samsung A51',
        img: 'assets/a51.png',
        location: "Calle 13 ave 24.",
        location2: "A lado de maniventas",
        year: 2022,
        price: 299.99,
        priceTotal: 0,
        description:
            "El Samsung Galaxy A51 marca la llegada de la nueva generación de flagships de Samsung para el 2021. El Galaxy S21 cuenta con una pantalla Dynamic AMOLED de 6.2 pulgadas a resolución Full HD"),
    BestSellers(
        count: 0,
        title: 'Samsung j7',
        img: 'assets/j7.png',
        priceTotal: 0,
        location: "Calle 13 ave 24.",
        location2: "A lado de maniventas",
        year: 2022,
        price: 499.99,
        description:
            "El Samsung Galaxy j7 marca la llegada de la nueva generación de flagships de Samsung para el 2021. El Galaxy S21 cuenta con una pantalla Dynamic AMOLED de 6.2 pulgadas a resolución Full HD"),
    BestSellers(
        count: 0,
        title: 'Samsung S20',
        img: 'assets/s20.png',
        location: "Calle 13 ave 24.",
        location2: "A lado de maniventas",
        year: 2022,
        price: 499.99,
        priceTotal: 0,
        description:
            "El Samsung Galaxy S20 marca la llegada de la nueva generación de flagships de Samsung para el 2021. El Galaxy S21 cuenta con una pantalla Dynamic AMOLED de 6.2 pulgadas a resolución Full HD"),
  ]),
  Info(title: 'Apple', img: 'assets/apple.png', phone: [
    BestSellers(
        count: 0,
        title: 'Iphone 13',
        img: 'assets/iphone13.png',
        year: 2021,
        location: "Calle 13 ave 24.",
        location2: "lado de maniventas",
        price: 799.99,
        priceTotal: 0,
        description:
            "Los nuevos iphone 13  son muy similares en diseño y  especificaciones, pero el Note 5G se desmarca en dimensiones y especificaciones con respecto a sus hermanos. "),
  ]),
  Info(title: 'Alcatel', img: 'assets/alcatel.png', phone: [
    BestSellers(
        count: 0,
        title: 'Alcatel',
        img: 'assets/alcatel12.png',
        year: 2021,
        location: "Calle 13 ave 24.",
        location2: "A lado de maniventas",
        price: 399.99,
        priceTotal: 0,
        description:
            "Los nuevos Alcatel son muy similares en diseño y  especificaciones, pero el Note 5G se desmarca en dimensiones y especificaciones con respecto a sus hermanos. "),
  ]),
  Info(title: 'Sony', img: 'assets/sony.png', phone: [
    BestSellers(
        count: 0,
        title: 'Sony Xperia',
        img: 'assets/sonye.png',
        year: 2021,
        location: "Calle 13 ave 24.",
        location2: " A lado de maniventas",
        price: 399.99,
        priceTotal: 0,
        description:
            "Los nuevos Sony Xperia son muy similares en diseño y  especificaciones, pero el Note 5G se desmarca en dimensiones y especificaciones con respecto a sus hermanos. "),
  ]),
  Info(title: 'Motorola', img: 'assets/motorola.png', phone: [
    BestSellers(
        count: 0,
        title: 'Motoral',
        img: 'assets/motoral.png',
        year: 2021,
        priceTotal: 0,
        location: "Calle 13 ave 24.",
        location2: "lado de maniventas",
        price: 399.99,
        description:
            "Los nuevos Motorola son muy similares en diseño y  especificaciones, pero el Note 5G se desmarca en dimensiones y especificaciones con respecto a sus hermanos. "),
  ]),
  Info(title: 'Redmi', img: 'assets/redmi.png', phone: [
    BestSellers(
        count: 0,
        title: 'Redmi Note 10',
        img: 'assets/redmi10.png',
        year: 2021,
        priceTotal: 0,
        location: "Calle 13 ave 24.",
        location2: "lado de maniventas",
        price: 399.99,
        description:
            "Los nuevos Xiaomi Redmi Note 10 y Note 10S son muy similares en diseño y  especificaciones, pero el Note 5G se desmarca en dimensiones y especificaciones con respecto a sus hermanos. "),
  ]),
  Info(title: 'Realme', img: 'assets/realme.png', phone: [
    BestSellers(
        count: 0,
        title: 'Realme 8 pro',
        img: 'assets/realme8.png',
        year: 2021,
        priceTotal: 0,
        location: "Calle 13 ave 24.",
        location2: "lado de maniventas",
        price: 399.99,
        description:
            "Los nuevos Realme son muy similares en diseño y  especificaciones, pero el Note 5G se desmarca en dimensiones y especificaciones con respecto a sus hermanos. "),
  ])
];

class Info {
  ///title variable
  final String title;

  ///subTitle variable
  final String img;
  final List<BestSellers> phone;

  ///constructor of the info class
  // ignore: sort_constructors_first
  Info({
    required this.title,
    required this.phone,
    required this.img,
  });
}

final itemsBestSeller = <BestSellers>[
  BestSellers(
      count: 0,
      title: 'Samsung S21',
      img: 'assets/samsumg-cell.png',
      location: "Calle 13 ave 24.",
      location2: "lado de maniventas",
      year: 2022,
      price: 499.99,
      priceTotal: 0,
      description:
          "El Samsung Galaxy S21 marca la llegada de la nueva generación de flagships de Samsung para el 2021. El Galaxy S21 cuenta con una pantalla Dynamic AMOLED de 6.2 pulgadas a resolución Full HD"),
  BestSellers(
      count: 0,
      title: 'Redmi Note 10',
      img: 'assets/redmi10.png',
      year: 2021,
      priceTotal: 0,
      location: "Calle 13 ave 24.",
      location2: "lado de maniventas",
      price: 399.99,
      description:
          "Los nuevos Xiaomi Redmi Note 10 y Note 10S son muy similares en diseño y  especificaciones, pero el Note 5G se desmarca en dimensiones y especificaciones con respecto a sus hermanos. "),
  BestSellers(
      count: 0,
      title: 'Realme 8 pro',
      img: 'assets/realme8.png',
      year: 2021,
      location: "Calle 13 ave 24.",
      location2: "lado de maniventas",
      price: 450.99,
      priceTotal: 0,
      description:
          "El Redmi Note 8 Pro es un nuevo intento de Xiaomi por hacerse de manera definitiva con la gama media de los smartphones Android aunque ello le cueste más dudas al consumidor por la gran cantidad de terminales parecidos en un margen de precio muy reducido."),
];

class BestSellers {
  ///title variable
  final String title;

  ///subTitle variable
  final String img;
  late int count;

  ///subTitle variable
  final int year;
  late double price;
  late double priceTotal;
  final String location;
  final String description;
  final String location2;

  ///constructor of the info class
  // ignore: sort_constructors_first
  BestSellers(
      {required this.location,
      required this.location2,
      required this.count,
      required this.price,
      required this.priceTotal,
      required this.year,
      required this.title,
      required this.img,
      required this.description});
}

final purchase = <Purchases>[
  Purchases(
      price: 399.99,
      year: 2022,
      title: "Samgung S1",
      img: "assets/samsumg-cell.png"),
];

class Purchases {
  ///title variable
  final String title;

  ///subTitle variable
  final String img;

  ///subTitle variable
  final int year;
  final double price;

  ///constructor of the info class
  // ignore: sort_constructors_first
  Purchases({
    required this.price,
    required this.year,
    required this.title,
    required this.img,
  });
}
