enum ImageType {
  jpg('image/jpg'),
  jpeg('image/jpeg'),
  png('image/png');

  final String contentType;

  const ImageType(this.contentType);
}
