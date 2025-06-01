import 'package:flutter/material.dart';

import 'package:study_case/feature/home/domain/entities/book_model.dart';

class DetailBookScreen extends StatelessWidget {
  final BookModel book;
  const DetailBookScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Book')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: Image.network(
                book.coverImage,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset('assets/images/empty-book.png');
                },
              ),
            ),
            SizedBox(height: 16),
            Text(book.title, style: Theme.of(context).textTheme.titleLarge),
            Text('by ${book.author}'),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Chip(
                backgroundColor: Theme.of(context).colorScheme.primary,
                label: Text(
                  book.category,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                labelPadding: EdgeInsets.all(0),
                visualDensity: VisualDensity.compact,
              ),
            ),
            SizedBox(height: 32),
            Text(book.summary),
          ],
        ),
      ),
    );
  }
}
