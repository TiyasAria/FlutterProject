import 'package:flutter/material.dart';
import 'package:furniturin_app/bloc/furnitur_store_bloc.dart';

class FurniturProvider extends InheritedWidget {
  final FurniturStoreBloc bloc;
  final Widget child;

  FurniturProvider({@required this.bloc, @required this.child}) : super(child: child);
  static FurniturProvider of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<FurniturProvider>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}