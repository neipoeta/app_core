import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:lab_clinicas_core/src/loader/lab_clinicas_loader.dart';

class LabClinicasCoreConfig extends StatelessWidget {
  LabClinicasCoreConfig({
    super.key,
    this.binding,
    this.pages,
    this.pagesBuilders,
    this.modules,
    required this.title,
  });

  ApplicationBindings? binding;
  final List<FlutterGetItPageRouter>? pages;
  final List<FlutterGetItPageBuilder>? pagesBuilders;
  final List<FlutterGetItModule>? modules;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
        debugMode: kDebugMode,
        bindings: binding,
        bindingsBuilder: () => [Bind.lazySingleton((i) => 'Poeta')],
        pages: [...pages ?? [], ...pagesBuilders ?? []],
        modules: modules,
        builder: (context, routes, FlutterGetItNavObserver) {
          return AsyncStateBuilder(
            loader: LabClinicasLoader(),
            builder: (navigatorObserver) {
              return MaterialApp(
                navigatorObservers: [
                  navigatorObserver,
                  FlutterGetItNavObserver,
                ],
                title: title,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                initialRoute: '/',
              );
            },
          );
        });
  }
}
