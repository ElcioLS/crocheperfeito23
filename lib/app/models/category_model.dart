class CategoryModel {
  final String categoryName;
  final String productCount;
  final String thumbnailImage;

  CategoryModel({
    required this.categoryName,
    required this.productCount,
    required this.thumbnailImage,
  });
}

final categories = [
  CategoryModel(
    categoryName: 'Africanos',
    productCount: '19',
    thumbnailImage:
        'https://s3.amazonaws.com/img.iluria.com/product/5676E5/1680C38/450xN.jpg',
  ),
  CategoryModel(
    categoryName: 'Americanos',
    productCount: '8',
    thumbnailImage:
        'https://s3.amazonaws.com/img.iluria.com/product/5676C2/1778F40/450xN.jpg',
  ),
  CategoryModel(
    categoryName: 'Australianos',
    productCount: '13',
    thumbnailImage:
        'https://s3.amazonaws.com/img.iluria.com/product/5676D0/130CB9C/450xN.jpg',
  ),
  CategoryModel(
    categoryName: 'Brasileiros',
    productCount: '26',
    thumbnailImage:
        'https://s3.amazonaws.com/img.iluria.com/product/5676C3/DDF770/450xN.jpg',
  ),
  CategoryModel(
    categoryName: 'Europeus',
    productCount: '12',
    thumbnailImage:
        'https://s3.amazonaws.com/img.iluria.com/product/5676C5/16B05A2/450xN.jpg',
  ),
];
