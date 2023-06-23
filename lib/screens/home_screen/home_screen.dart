import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myportforlio_flutter/screens/home_screen/cubit/home_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Container(
            alignment: Alignment.center,
            child: Column(children: [
              if (state is HomeInitial) Text(state.index.toString()),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        BlocProvider.of<HomeCubit>(context).increaseCounter();
                      },
                      child: const Text(
                        "Data +",
                      )),
                  TextButton(
                      onPressed: () =>
                          BlocProvider.of<HomeCubit>(context).decreaseCounter(),
                      child: const Text(
                        "Data -",
                      )),
                ],
              ),
              BlocBuilder<ButtonCubit, ShowButtonState>(
                  builder: (context, state) {
                if (state is ButtonInitial) {
                  return Column(
                    children: [
                      state.isShow
                          ? const Text("Showing Text")
                          : const SizedBox.shrink(),
                      TextButton(
                          onPressed: () =>
                              BlocProvider.of<ButtonCubit>(context).showText(),
                          child: const Text(
                            "Show Text",
                          )),
                    ],
                  );
                } else {
                  return Container();
                }
              }),
            ]),
          );
        },
      ),
    );
  }
}
