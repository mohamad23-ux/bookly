part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends Featuredbookstate {}

class FeaturedBooksLoading extends Featuredbookstate {}

class FeaturedBooksFaliure extends Featuredbookstate {
  final String errMessage;
  const FeaturedBooksFaliure(this.errMessage);
}

class FeaturedBookSuccess extends Featuredbookstate {
  final List<BookModel> books;
  const FeaturedBookSuccess(this.books);
}