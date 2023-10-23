import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:beyond_factoring/src/widget/app/appbar_widget.dart';
import 'package:beyond_factoring/src/widget/app/text_widget.dart';
import 'package:beyond_factoring/src/widget/logs/live_logs_widget.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LiveLogsScreen extends StatefulWidget {
  const LiveLogsScreen({super.key});

  @override
  State<LiveLogsScreen> createState() => _LiveLogsScreenState();
}

class _LiveLogsScreenState extends State<LiveLogsScreen> {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  final _stream = Supabase.instance.client.from("project_table").stream(
    primaryKey: ["id"],
  ).order('id', ascending: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: appBarWidget(context),
      body: StreamBuilder<List<Map<String, dynamic>>>(
          stream: _stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final data = snapshot.data!;
              return AnimatedList(
                key: listKey,
                padding: const EdgeInsets.all(40),
                initialItemCount: data.length,
                itemBuilder: (context, index, animation) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      index == 0
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColor.green,
                                      ),
                                    ),
                                    const Expanded(
                                      child: TextWidget(
                                        text: "Live Logs",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        align: TextAlign.left,
                                        margin: EdgeInsets.only(left: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                LiveLogsWidget(
                                  data: data[index],
                                  animation: animation,
                                ),
                              ],
                            )
                          : Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: LiveLogsWidget(
                                data: data[index],
                                animation: animation,
                              ),
                            ),
                    ],
                  );
                },
              );
            } else {
              return const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 56),
                  child: CircularProgressIndicator(
                    color: AppColor.white,
                  ),
                ),
              );
            }
          }),
    );
  }
}
