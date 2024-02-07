import 'package:flutter/material.dart';

import 'widgets/app_title.dart';

class CounterAppBody extends StatelessWidget {
    const CounterAppBody({Key? key, }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return CounterState(
        model: Counter(),
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const AppTitle(),

                CounterButtons(),

                HistoryWidget(),
              ],
            ),
          ),
        )
      );
    }
  }
