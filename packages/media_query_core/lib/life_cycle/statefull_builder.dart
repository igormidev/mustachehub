// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StatefullBuilder extends StatefulWidget {
  final void Function()? initState;
  final void Function()? didChangeDependencies;
  final void Function()? dispose;
  final Widget Function(BuildContext context) builder;
  const StatefullBuilder({
    super.key,
    this.initState,
    this.didChangeDependencies,
    this.dispose,
    required this.builder,
  });

  @override
  State<StatefullBuilder> createState() => _StatefullBuilderState();
}

class _StatefullBuilderState extends State<StatefullBuilder> {
  @override
  void initState() {
    super.initState();
    widget.initState?.call();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    widget.didChangeDependencies?.call();
  }

  @override
  void dispose() {
    super.dispose();
    widget.dispose?.call();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}
