import 'package:flutter_riverpod/flutter_riverpod.dart';

final toggle_login_and_signup = StateProvider.autoDispose<bool>((ref) {
  return false;
});
