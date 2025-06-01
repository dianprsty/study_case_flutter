import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:study_case/core/di/injection.dart';
import 'package:study_case/core/model/general_params.dart';
import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/domain/entities/genre_model.dart';
import 'package:study_case/feature/home/presentation/bloc/book_bloc.dart';
import 'package:study_case/feature/home/presentation/bloc/genre_bloc.dart';
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
      BookEvent.getBookByCategory(GeneralParams(genre: "")),
    );
    getIt<GenreBloc>().add(GenreEvent.getGenre());
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
                height: 60,
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<GenreBloc, GenreState>(
                      builder: (context, state) {
                        if (state.status == GeneralState.loading()) {
                          return const CircularProgressIndicator();
                        }

                        if (state.status == GeneralState.error()) {
                          return Text("Failed Get Category");
                        }
                        return Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final genre =
                                  index == 0
                                      ? GenreModel()
                                      : state.genres[index - 1];

                              bool isSelected =
                                  genre.genre == state.selectedGenre;
                              return GestureDetector(
                                onTap: () {
                                  context.read<GenreBloc>().add(
                                    GenreEvent.setGenre(genre.genre),
                                  );
                                  context.read<BookBloc>().add(
                                    BookEvent.getBookByCategory(
                                      GeneralParams(genre: genre.genre),
                                    ),
                                  );
                                },
                                child: Chip(
                                  backgroundColor:
                                      isSelected
                                          ? Theme.of(context).primaryColor
                                          : null,
                                  label: Text(
                                    index == 0
                                        ? "Semua"
                                        : '${genre.genre} (${genre.count})',
                                    style: TextStyle(
                                      color:
                                          isSelected
                                              ? Theme.of(
                                                context,
                                              ).colorScheme.onPrimary
                                              : null,
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder:
                                (context, index) => SizedBox(width: 8),
                            itemCount: state.genres.length + 1,
                          ),
                        );
                      },
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
