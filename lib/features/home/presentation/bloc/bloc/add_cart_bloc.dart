import 'package:bloc/bloc.dart';
import 'package:cell_phone/core/models/cell_model.dart';

import 'package:equatable/equatable.dart';

part 'add_cart_event.dart';
part 'add_cart_state.dart';

class AddCartBloc extends Bloc<AddCartEvent, AddCartState> {
  AddCartBloc() : super(AddCartState(best: [], count: 0));

//function to add a new data to the state
  void addCart(BestSellers best) {
    List<BestSellers> copy = List<BestSellers>.from(state.best);
    bool isFavorite(BestSellers room) => copy.contains(room);

    if (isFavorite(best)) {
      var index = copy.indexOf(best);
      if (copy.length == 1) {
        copy[index].count = 1;
      }

      copy[index].count = copy[index].count + 1;
      state.count = state.count + best.price;
    } else {
      copy.add(best);

      state.count = state.count + best.price;
    }

    state.best = copy;
  }

// function to delete a new data to the state
  void removeCart(BestSellers best) {
    List<BestSellers> copy = List<BestSellers>.from(state.best);
    bool isFavorite(BestSellers room) => copy.contains(room);

    if (isFavorite(best)) {
      var index = copy.indexOf(best);
      if (copy[index].count == 0) {
        copy.removeAt(index);
        state.count = state.count - best.price;
      } else {
        copy[index].count = copy[index].count - 1;
        state.count = state.count - best.price;
      }
    } else {
      copy.add(best);
    }

    state.best = copy;
  }
}
