import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'cheap_tickets_di.config.dart';

final injector = GetIt.instance;

@InjectableInit(
  initializerName: r'$$$init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async => $$$init(injector);
