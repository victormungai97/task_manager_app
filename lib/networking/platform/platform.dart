// networking/platform/platform.dart

/* Set up a common file to share platform specific code */

export 'unsupported.dart'
    if (dart.library.html) 'web/web.dart'
    if (dart.library.io) 'native/native.dart';
