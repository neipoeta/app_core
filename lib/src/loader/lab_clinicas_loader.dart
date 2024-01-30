import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LabClinicasLoader extends AsyncOverlay {
  LabClinicasLoader()
      : super(
            id: 0,
            builder:
                (BuildContext context, AsyncValue<RouteSettings> settings) {
              return Center(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width * 8,
                child: LoadingAnimationWidget.inkDrop(
                    color: Colors.orange, size: 50),
              ));
            });
}
