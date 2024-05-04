import 'package:pocketbase/pocketbase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pocket_base.g.dart';

@riverpod
PocketBase pocketBase(PocketBaseRef ref) {
  return PocketBase('http://127.0.0.1:8090');
}
