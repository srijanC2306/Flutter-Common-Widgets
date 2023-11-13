import 'package:flutter/material.dart';

class RowColumnAdjustment extends StatefulWidget {
  final String title;
  final String columnTitle;
  final String columnDescription;
  const RowColumnAdjustment(
      {required this.title,
      required this.columnTitle,
      required this.columnDescription,
      super.key});

  @override
  State<RowColumnAdjustment> createState() => _RowColumnAdjustmentState();
}

class _RowColumnAdjustmentState extends State<RowColumnAdjustment> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(microseconds: 500),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      widget.title,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          widget.columnTitle,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Divider(color: theme.dividerColor),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          widget.columnDescription,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
