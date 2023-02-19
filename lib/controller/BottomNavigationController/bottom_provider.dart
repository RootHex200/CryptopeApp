

import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});