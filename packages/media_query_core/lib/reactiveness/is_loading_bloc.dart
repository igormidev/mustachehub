import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IsLoadingBloc<B extends StateStreamable<S>, S> extends StatefulWidget {
  final Widget child;
  final Widget? loadingChild;

  const IsLoadingBloc({
    super.key,
    required this.child,
    this.loadingChild,
  });

  @override
  State<IsLoadingBloc<B, S>> createState() => _IsLoadingBlocState<B, S>();
}

class _IsLoadingBlocState<B extends StateStreamable<S>, S>
    extends State<IsLoadingBloc<B, S>> {
  final ValueNotifier<bool> _isLoading = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, S>(
      listener: (context, state) {
        isStateLoading(state);
      },
      child: ValueListenableBuilder(
        valueListenable: _isLoading,
        child: widget.child,
        builder: (context, value, child) {
          if (value) {
            if (widget.loadingChild == null) {
              return const CircularProgressIndicator.adaptive();
            } else {
              return widget.loadingChild!;
            }
          } else {
            return child!;
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _isLoading.dispose();
  }

  void isStateLoading(S state) {
    final t = state.toString().toLowerCase();
    final isLoading = t.contains('loading') || t.contains('processing');
    if (isLoading) {
      if (_isLoading.value == false) _isLoading.value = true;
    } else {
      if (_isLoading.value == true) _isLoading.value = false;
    }
  }
}
