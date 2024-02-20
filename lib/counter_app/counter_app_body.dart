import 'package:first_app_nav/counter_app/widgets/counter_buttons.dart';
import 'package:first_app_nav/counter_app/widgets/counter_inherited_widget.dart';
import 'package:first_app_nav/counter_app/widgets/history_widget.dart';
import 'package:flutter/material.dart';

import 'model/counter.dart';
import 'widgets/app_title.dart';

class CounterAppBody extends StatelessWidget {
    const CounterAppBody({Key? key, }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return CounterState(
        model: Counter(),
        child: const Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppTitle(),

                CounterButtons(),

                HistoryWidget(),
              ],
            ),
          ),
        )
      );
    }
  }
