import 'package:flutter/material.dart';
import 'package:flutterplayground/utils/supabase_handler.dart';

class LeaderBoardScreen extends StatefulWidget {
  LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  List<dynamic> scores = [];

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => test());
  }

  void test() async {
    final temp = await SupabaseHandler().getData('scores', '*');

    setState(() {
      scores = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
              itemCount: scores.length,
              itemBuilder: (ctx, idx) {
                return Row(
                  children: [
                    Text(scores[idx]['game']),
                    Text(scores[idx]['score'].toString()),
                  ],
                );
              })),
    );
  }
}
