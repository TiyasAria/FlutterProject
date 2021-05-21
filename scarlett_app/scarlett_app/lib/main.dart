import 'package:flutter/material.dart';
import 'package:scarlett_app/bloc/scarlett_store_bloc.dart';
import 'package:scarlett_app/screens/scarlett_store_favorite.dart';
import 'package:scarlett_app/screens/scarlett_store_list.dart';

import 'provider/scarlett_provider.dart';
import 'utils/colors.dart';

void main() {
  runApp(MyApp());
}

const cartBarHeight = 100.0;
const _panelTransition = Duration(milliseconds: 600);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scarlett Store',
      color: pinkBackground,
      debugShowCheckedModeBanner: false,
      home: ScarlettStoreHome(),
    );
  }
}

class ScarlettStoreHome extends StatefulWidget {

  @override
  _ScarlettStoreHomeState createState() => _ScarlettStoreHomeState();
}

class _ScarlettStoreHomeState extends State<ScarlettStoreHome> {
  final bloc = ScarlettStoreBloc();

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta < -7) {
      bloc.changeToFavorite();
    } else if (details.primaryDelta > 12) {
      bloc.changeToNormal();
    }
  }

  double _getTopForWhitePanel(ScarlettState state, Size size) {
    if (state == ScarlettState.normal) {
      return -cartBarHeight + kToolbarHeight;
    } else if (state == ScarlettState.favorite) {
      return -(size.height - kToolbarHeight - cartBarHeight / 2);
    }
    return 0.0;
  }

  double _getTopForBlackPanel(ScarlettState state, Size size) {
    if (state == ScarlettState.normal) {
      return size.height - cartBarHeight;
    } else if (state == ScarlettState.favorite) {
      return cartBarHeight / 2;
    }
    return 0.0;
  }

  double _getTopForAppBar(ScarlettState state) {
    if (state == ScarlettState.normal) {
      return 0.0;
    } else if (state == ScarlettState.favorite) {
      return -cartBarHeight;
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return ScarlettProvider(
        bloc: bloc,
        child: AnimatedBuilder(
            animation: bloc,
            builder: (context, __) {
              return Scaffold(
                backgroundColor: blackBackground,
                body: Stack(
                  children: [
                    AnimatedPositioned(
                      curve: Curves.decelerate,
                      duration: _panelTransition,
                      left: 0,
                      right: 0,
                      top: _getTopForWhitePanel(bloc.scarlettState, size),
                      height: size.height - kToolbarHeight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white
                          ),
                          child: ScarlettStoreList(),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      curve: Curves.decelerate,
                      duration: _panelTransition,
                      left: 0,
                      right: 0,
                      top: _getTopForBlackPanel(bloc.scarlettState, size),
                      height: size.height - kToolbarHeight,
                      child: GestureDetector(
                        onVerticalDragUpdate: _onVerticalGesture,
                        child: Container(
                          color: Colors.black,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(25.0),
                                child: AnimatedSwitcher(
                                  duration: _panelTransition,
                                  child: SizedBox(
                                      height: kToolbarHeight,
                                      child: bloc.scarlettState ==
                                          ScarlettState.normal
                                          ? Row(
                                        children: [
                                          Text(
                                            'Favorite',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Expanded(
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5.0),
                                                child: Row(
                                                  children: List.generate(
                                                      bloc.favorite.length,
                                                          (index) =>
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8.0),
                                                            child: Stack(
                                                              children: [
                                                                Hero(
                                                                    tag: 'list_${bloc
                                                                        .favorite[index]
                                                                        .product
                                                                        .name}details',
                                                                    child: CircleAvatar(
                                                                      backgroundColor: Colors
                                                                          .white,
                                                                      backgroundImage: AssetImage(
                                                                        bloc
                                                                            .favorite[index]
                                                                            .product
                                                                            .image,
                                                                      ),
                                                                    )
                                                                ),
                                                                Positioned(
                                                                  right: 0,
                                                                  child: CircleAvatar(
                                                                    radius: 10,
                                                                    backgroundColor: Colors
                                                                        .red,
                                                                    child: Text(
                                                                      bloc
                                                                          .favorite[index]
                                                                          .quantity
                                                                          .toString(),
                                                                      style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          CircleAvatar(
                                            backgroundColor: pinkBackground,
                                            child: Text(
                                              bloc.totalFavoriteElements().toString(),
                                            ),
                                          ),
                                        ],
                                      )
                                          : SizedBox.shrink()
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ScarlettStoreFavorite(),
                              )
                            ],

                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      curve: Curves.decelerate,
                      duration: _panelTransition,
                      left: 0,
                      right: 0,
                      top: _getTopForAppBar(bloc.scarlettState),
                      child: _AppBarGrocery(),
                    )
                  ],
                ),
              );
            }
        )
    );
  }
}

class _AppBarGrocery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Container(
          padding: const EdgeInsets.only(top: 5.0),
          height: kToolbarHeight,
          color: backgroundColor,
          child: Row(
              children: [
                Container(
              padding: EdgeInsets.all(5.0),
              child: new Image.asset('assets/image/logo_scarlett.jpg', width: 40.0)
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Text(
                    "See The Beauty In Everyday Things",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
          ],
        ),
      ),
      ),
    );
  }
}




