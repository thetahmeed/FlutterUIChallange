class Car {
  final int position;
  final String img;
  final String title;
  final String description;
  final String phone;
  final String sms;

  Car(
    this.position, {
    this.img,
    this.title,
    this.description,
    this.phone,
    this.sms,
  });
}

List<Car> carList = [
  Car(
    1,
    img: 'https://pngimg.com/uploads/lexus/lexus_PNG58.png',
    title: 'Sedan',
    description: 'Looking for a 4 seater?',
    phone: '01700547406',
    sms: 'm.me/tahmeedslab',
  ),
  Car(
    2,
    img: 'https://pngimg.com/uploads/toyota/toyota_PNG1952.png',
    title: 'Noah',
    description: 'Looking for a 7 seater?',
    phone: '01700547406',
    sms: 'm.me/tahmeedslab',
  ),
  Car(
    3,
    img: 'https://pngimg.com/uploads/toyota/toyota_PNG1952.png',
    title: 'Hiace',
    description: 'Looking for a 10 seater?',
    phone: '01700547406',
    sms: 'm.me/tahmeedslab',
  ),
  Car(
    4,
    img: 'https://pngimg.com/uploads/toyota/toyota_PNG1952.png',
    title: 'Hice Grand Cabin',
    description: 'Looking for a 14 seater?',
    phone: '01700547406',
    sms: 'm.me/tahmeedslab',
  ),
];
