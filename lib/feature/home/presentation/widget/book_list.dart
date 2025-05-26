import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:study_case/core/extension/context_extension.dart';
import 'package:study_case/core/model/general_params.dart';
import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/presentation/bloc/book_bloc.dart';

class BookList extends StatefulWidget {
  const BookList({super.key});

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _scrollController.addListener(_handleInfiniteScroll);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void _handleInfiniteScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      final state = context.read<BookBloc>().state;
      int currentPage = state.params.page ?? 1;
      bool hasNextPage = state.pagination.hasNextPage ?? false;

      if (hasNextPage) {
        context.read<BookBloc>().add(
          BookEvent.getBookByCategory(
            state.params.copyWith(page: currentPage + 1),
          ),
        );
      } else {
        context.showSnackBar(message: "You have reached the end og the list");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<BookBloc, BookState>(
        builder: (context, state) {
          if (state.status == GeneralState.loading() && state.books.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == GeneralState.error()) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.errorMessage!),
                  ElevatedButton(
                    onPressed: () {
                      context.read<BookBloc>().add(
                        BookEvent.getBookByCategory(state.params),
                      );
                    },
                    child: Text("Retry"),
                  ),
                ],
              ),
            );
          }

          return state.books.isEmpty
              ? const Center(child: Text('No Data'))
              : Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      controller: _scrollController,
                      itemCount: state.books.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 4 / 6,
                      ),
                      itemBuilder: (context, index) {
                        BookModel book = state.books[index];
                        return Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Image.network(
                                  book.coverImage,
                                  loadingBuilder: (
                                    context,
                                    child,
                                    loadingProgress,
                                  ) {
                                    if (loadingProgress == null) return child;
                                    return const Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  },
                                  errorBuilder: (context, error, stackTrace) {
                                    return Image.asset(
                                      "assets/images/empty-book.png",
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      book.title,
                                      style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(book.author),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  if (state.status == GeneralState.loading())
                    const Center(child: CircularProgressIndicator()),
                ],
              );
        },
      ),
    );
  }
}
