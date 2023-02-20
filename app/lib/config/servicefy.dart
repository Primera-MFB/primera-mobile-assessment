import 'package:flutter/material.dart';

class Servicefy {
  Future<void> init() async {
    debugPrint('starting services ...');

    /// Here is where you put get_storage, hive, shared_pref initialization.
    /// or moor connection, or whatever that's async.

    // Get.put<Session>(Session());

    debugPrint('All services started...');
  }
}
