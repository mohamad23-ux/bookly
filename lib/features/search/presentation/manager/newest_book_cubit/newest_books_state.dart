part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewestBooksState {}

class NewsetBooksLoading extends NewestBooksState {}

class NewsetBooksFaliure extends NewestBooksState {
  final String errMessage;
  const NewsetBooksFaliure(this.errMessage);
}

class NewsetBookSuccess extends NewestBooksState {
  final List<BookModel> books;
  const NewsetBookSuccess(this.books);
}