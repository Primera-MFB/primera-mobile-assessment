import 'dart:async';

abstract class CacheBase {
  Future<void> clear();
  Future<dynamic> init();
}
