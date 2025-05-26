import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:study_case/core/model/general_params.dart';
import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/presentation/bloc/book_bloc.dart';
import 'package:study_case/feature/home/presentation/widget/book_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BookBloc>().add(
      BookEvent.getBookByCategory(GeneralParams(genre: "Romance")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: CarouselView.weighted(
                  flexWeights: [8, 1],
                  children: [
                    ...List.generate(4, (index) {
                      return Card(
                        child: Image.asset(
                          "assets/images/book${index + 1}.png",
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
                  ],
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Chip(label: Text("Category"));
                        },
                        separatorBuilder:
                            (context, index) => SizedBox(width: 8),
                        itemCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              BookList(),
            ],
          ),
        ),
      ),
    );
  }
}
