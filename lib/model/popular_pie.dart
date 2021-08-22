class PopularPie {
  String name;
  double rate;
  String time;
  String img;
  String desc;
  num price;
  String deliverStatus;

  PopularPie({
    required this.name,
    required this.rate,
    required this.time,
    required this.img,
    required this.desc,
    required this.price,
    required this.deliverStatus,
  });
}

var listPopularPie = [
  PopularPie(
    name: "Cream Sweet Pie",
    rate: 4.5,
    time: "20-30 Min",
    desc:
        'Cream Sweet Pie is a pie made from real honey and combined with cream on top of the pie',
    img: 'assets/pie1.png',
    price: 59.999,
    deliverStatus: " Free Delivery",
  ),
  PopularPie(
    name: "DoubleJumbo Pie",
    rate: 4.8,
    time: "30-45 Min",
    img: 'assets/pie2.png',
    desc:
        'Cream Sweet Pie is a pie made from real honey and combined with cream on top of the pie',
    price: 39.999,
    deliverStatus: " Free Delivery",
  ),
  PopularPie(
    name: "Fruit’s Small Pie",
    rate: 4.5,
    time: "10-25 Min",
    img: 'assets/pie3.png',
    desc:
        'Cream Sweet Pie is a pie made from real honey and combined with cream on top of the pie',
    price: 49.999,
    deliverStatus: " Free Delivery",
  ),
];
