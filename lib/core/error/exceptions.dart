class GenericException implements Exception {
  GenericException({required this.message});

  final String message;
}

class ServerException implements Exception {
  ServerException({
    this.message,
  });

  final String? message;
}

class CacheException implements Exception {}
