part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFaliure extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBooksFaliure(this.errMessage);
}

class FeaturedBookSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBookSuccess(this.books);
}