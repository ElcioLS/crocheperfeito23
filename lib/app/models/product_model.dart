class ProductModel {
  final String productName;
  final String productImageUrl;
  final String currentPrice;
  final String oldPrice;
  final bool isLiked;

  ProductModel({
    required this.productName,
    required this.productImageUrl,
    required this.currentPrice,
    required this.oldPrice,
    required this.isLiked,
  });
}

final products = [
  ProductModel(
    productName: 'BIQUINI ALICE',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/5676C3/DDF770/450xN.jpg',
    oldPrice: '690',
    currentPrice: '390',
    isLiked: false,
  ),
  ProductModel(
    productName: 'BIQUINI ANA JÚLIA',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/5676C2/17741F8/450xN.jpg',
    oldPrice: '690',
    currentPrice: '390',
    isLiked: true,
  ),
  ProductModel(
    productName: 'BIQUINI BÁRBARA',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/5676DE/16281D0/450xN.jpg',
    oldPrice: '690',
    currentPrice: '390',
    isLiked: true,
  ),
  ProductModel(
    productName: 'BIQUINI ISABELLA',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/5676B6/16EDC09/450xN.jpg',
    oldPrice: '720',
    currentPrice: '520',
    isLiked: false,
  ),
  ProductModel(
    productName: 'BIQUINI KATTRINNA',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/6A2B48/13D492F/450xN.jpg',
    oldPrice: '720',
    currentPrice: '520',
    isLiked: true,
  ),
  ProductModel(
    productName: 'BIQUINI ÍSIS',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/70188B/14F6992/450xN.jpg',
    oldPrice: '720',
    currentPrice: '520',
    isLiked: true,
  ),
  ProductModel(
    productName: 'BIQUINI SAMANTHA',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/5675D8/15EE56C/450xN.jpg',
    oldPrice: '600',
    currentPrice: '490',
    isLiked: false,
  ),
  ProductModel(
    productName: 'BIQUINI TABATHA',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/701888/15054D2/450xN.jpg',
    oldPrice: '600',
    currentPrice: '490',
    isLiked: true,
  ),
  ProductModel(
    productName: 'BIQUINI THAMYRES',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/5675D7/16261B1/450xN.jpg',
    currentPrice: '490',
    oldPrice: '600',
    isLiked: true,
  ),
  ProductModel(
    productName: 'BIQUINI YASMIM',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/5676C5/16B05A4/450xN.jpg',
    oldPrice: '550',
    currentPrice: '390',
    isLiked: true,
  ),
  ProductModel(
    productName: 'BIQUINI VANUZA',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/5676CF/12CC20F/450xN.jpg',
    oldPrice: '600',
    currentPrice: '399',
    isLiked: true,
  ),
  ProductModel(
    productName: 'BIQUINI ZÉLIA',
    productImageUrl:
        'https://s3.amazonaws.com/img.iluria.com/product/5676D2/13CAD39/450xN.jpg',
    oldPrice: '700',
    currentPrice: '499',
    isLiked: true,
  ),
];
