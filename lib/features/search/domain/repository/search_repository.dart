abstract interface class SearchRepository {
  Future<String> getLastPlace();

  Future<void> updateSavedPlace(String params);
}
