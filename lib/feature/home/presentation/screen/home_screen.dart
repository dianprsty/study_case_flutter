import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/presentation/bloc/book_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BookBloc>().add(BookEvent.getBookByCategory(''));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<BookBloc, BookState>(
                builder: (context, state) {
                  if (state.status == GeneralState.loading()) {
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
                                BookEvent.getBookByCategory(''),
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
                      : GridView.builder(
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
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(Icons.error);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
