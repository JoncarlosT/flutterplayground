import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseHandler {
  final _client = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> getData(
      String table, String filter) async {
    return await _client.from(table).select(filter);
  }
}
