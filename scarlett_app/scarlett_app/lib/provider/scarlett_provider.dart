

import 'package:flutter/material.dart';
import 'package:scarlett_app/bloc/scarlett_store_bloc.dart';

class ScarlettProvider extends InheritedWidget{
  final ScarlettStoreBloc bloc;
  final Widget child;

  ScarlettProvider({@required this.bloc, @required this.child }): super(child: child);
  static ScarlettProvider of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<ScarlettProvider>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

}