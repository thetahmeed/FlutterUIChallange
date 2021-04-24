class Books {
  final int position;
  final String name;
  final String image;
  final String description;
  final List<String> images;

  Books(
    this.position, {
    this.name,
    this.image,
    this.description,
    this.images,
  });
}

List<Books> allBooks = [
  Books(
    1,
    name: 'Philosopher\'s Stone',
    image: 'https://hpmedia.bloomsbury.com/rep/s/9781408898109_310788.png',
    description: _description,
    images: [],
  ),
  Books(
    2,
    name: 'The Chamber of Secrets',
    image: 'https://hpmedia.bloomsbury.com/rep/s/9781408898147_310792.png',
    description: _description,
    images: [],
  ),
  Books(
    3,
    name: 'The Prisoner of Azkaban',
    image: 'https://hpmedia.bloomsbury.com/rep/s/9781408898116_311442.png',
    description: _description,
    images: [],
  ),
  Books(
    4,
    name: 'The Goblet of Fire',
    image: 'https://hpmedia.bloomsbury.com/rep/s/9781408898154_311445.png',
    description: _description,
    images: [],
  ),
  Books(
    5,
    name: 'The Order of the Phoenix',
    image: 'https://hpmedia.bloomsbury.com/rep/s/9781408898161_310789.png',
    description: _description,
    images: [],
  ),
  Books(
    6,
    name: 'The Half-Blood Prince',
    image: 'https://hpmedia.bloomsbury.com/rep/s/9781408898093_311439.png',
    description: _description,
    images: [],
  ),
  Books(
    7,
    name: 'The Deathly Hallows',
    image: 'https://hpmedia.bloomsbury.com/rep/s/9781408898123_310790.png',
    description: _description,
    images: [],
  ),
];

String _description =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';
