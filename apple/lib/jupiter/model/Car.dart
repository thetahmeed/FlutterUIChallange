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
    img:
        'https://png2.cleanpng.com/sh/dc74a4f0b7b2df49804a4fee86ff8dab/L0KzQYm3U8MxN6VrfZH0aYP2gLBuTgRwgZD5eZ9xaXz4iH7qggIufJDAhAZqLXzkfrW0gCJ2caRqip95cnHnf377jClwfJIyjtN3LUXkcrXqhcczOJU7faY6LkC2Q4aBVMQ0OWY3SqUDOEW8RIG8Vb5xdpg=/kisspng-toyota-hilux-car-toyota-land-cruiser-prado-toyota-van-5abdce720d6e41.033584431522388594055.png',
    title: 'Hiace',
    description: 'Looking for a 10 seater?',
    phone: '01700547406',
    sms: 'm.me/tahmeedslab',
  ),
  Car(
    4,
    img:
        'https://png2.cleanpng.com/sh/cc95d408c2ae739c47c8e3f8f9599658/L0KzQYm3VME5N6ZniZH0aYP2gLBuTgRwgZD5eZ9xaXHmdX7qggIufpJzReZ4eXB3cX7qgf1zgV55hAt4dHGwRbLrVvRmOJI8fNU5ZEexRoK7WcQ5P2Q2TaQ9MEOzSYm9VcE2OV91htk=/kisspng-toyota-hiace-car-van-toyota-camry-toyota-5ad6de0a7dc0d7.6149487315240309865151.png',
    title: 'Hice Grand Cabin',
    description: 'Looking for a 14 seater?',
    phone: '01700547406',
    sms: 'm.me/tahmeedslab',
  ),
];
