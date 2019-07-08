import 'dart:async';
import 'dart:js';

import 'package:firebase_cloud_messaging_interop/src/fcm_interop.dart';

/// Convert a [Promise] object to a [Future] object by using a completer.
Future futureFromPromise<T>(Promise<T> p) {
  final completer = Completer<T>();

  p.then(
      allowInterop(completer.complete), allowInterop(completer.completeError));

  return completer.future;
}
