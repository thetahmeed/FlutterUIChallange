class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

// List of products

List<Product> _inkProductList = [
  Product(
    id: 1,
    price: 22000,
    title: 'Acer Aspire 3 A315-23',
    description: _productOneDescription,
    image: 'assets/inkimg/img1.png',
  ),
  Product(
    id: 2,
    price: 32000,
    title: 'HP 15s-du1068TU Celeron N4020',
    description: _productTwoDescription,
    image: 'assets/inkimg/img2.png',
  ),
  Product(
    id: 3,
    price: 26000,
    title: 'Desktop PC AMD Ryzen-3 500GB',
    description: _productThreeDescription,
    image: 'assets/inkimg/img3.png',
  ),
];

String _productOneDescription =
    'Acer Aspire 3 A315-23 Laptop comes with AMD Athlon Silver 3050U Processor (2 core, Base Clock: 2.3GHz, Max Boost Clock: Up to 3.2GHz), 4GB DDR4 RAM, 1 TB 5400 RPM HDD and AMD Radeon Graphics. This Laptop is also featured with 15.6" HD 1366 x 768 resolution, high-brightness Acer ComfyView LED-backlit TFT LCD Display, 3-pin 45W AC Adapter, Windows 10 64-bit. The 802.11a/b/g/n/ac wireless LAN, IEEE 802.11ac/a/b/g/n and Bluetooth V4 Network & Wireless Connectivity are available in this laptop. Here, HD webcam with 640 x 480 resolution, SD media card reader, Stereo Speaker, mic and headphone combo jack, 1 x HDMI, 2 x USB 3.2 Gen 1 ports; 1 x USB 2.0 ports and connectors are also available in this Acer Laptop. The new Acer Aspire 3 Laptop has 02 years warranty.';

String _productTwoDescription =
    'HP 15s-du1068TU Laptop comes with an Intel Celeron N4020 processor. It has a Base Frequency of 1.10 GHz and a Burst Frequency of 2.80 GHz with a 4MB cache. It has 4GB DDR4 RAM and 1 TB HDD on board. It comes with a 15.6" HD LED display with 1920x1080 resolution. It supports 1 SuperSpeed USB Type-C 5Gbps signaling rate; 2 SuperSpeed USB Type-A 5Gbps signaling rate; 1 HDMI 1.4b; 1 RJ-45; 1 AC smart pin; 1 headphone/microphone combo. It has 1 multi-format SD media card reader. It has built-in dual speakers. It comes with a standard keyboard and a built-in webcam. It supports WiFi and Bluetooth. It has Intel HD Graphics. Windows 10 Home is installed in it. 1 year International Limited Warranty (Terms & condition Apply As Per HP)';

String _productThreeDescription =
    'Asus A320M AMD gaming motherboard, AMD Ryzen-3 3200G processor, 3.6GHz up to 4.0 GHz processor, 500GB SATA hard disk drive, 18.5 inch LED HP monitor.';
