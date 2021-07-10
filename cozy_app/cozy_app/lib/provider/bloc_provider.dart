import 'package:cozy_app/bloc/kos_bloc.dart';
import 'package:flutter/material.dart';

class BlocProvider extends InheritedWidget {
  final CozyBloc bloc;
  final Widget child;

  BlocProvider({@required this.bloc, @required this.child}) : super(child: child);
  static BlocProvider of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<BlocProvider>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}