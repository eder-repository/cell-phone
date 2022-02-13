part of 'add_cart_bloc.dart';

class AddCartState extends Equatable {
  AddCartState({required this.best, required this.count});

  late List<BestSellers> best;

  double count;

  AddCartState get initialState => AddCartState(best: best, count: 0);

  AddCartState copyWith({
    List<BestSellers>? best,
    double? count,
  }) =>
      AddCartState(best: best ?? this.best, count: count ?? this.count);

  @override
  List<Object?> get props => [best];
}
