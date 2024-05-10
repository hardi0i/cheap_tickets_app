import 'package:cheap_tickets_app/core/constants/shared_prefs_keys.dart';
import 'package:cheap_tickets_app/core/error/exceptions.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SearchLocalDataSource {
  Future<String> getLastTypedPlace();

  Future<void> updateLastTypedPlace(String place);
}

@LazySingleton(as: SearchLocalDataSource)
class SharedPrefSearchLocalDataSource implements SearchLocalDataSource {
  SharedPrefSearchLocalDataSource(this._sharedPrefInstance);

  final SharedPreferences _sharedPrefInstance;

  @override
  Future<String> getLastTypedPlace() async {
    final savedPlace = _sharedPrefInstance.getString(savedPlaceKey);

    if (savedPlace != null) {
      return savedPlace;
    } else {
      return '';
    }
  }

  @override
  Future<void> updateLastTypedPlace(String place) async {
    final isSaved = await _sharedPrefInstance.setString(
      savedPlaceKey,
      place,
    );

    if (!isSaved) throw CacheException();
  }
}
