part of 'details_bloc.dart';

class DetailsEvent extends Equatable {
  const DetailsEvent();

  @override
  List<Object?> get props => [];
}

class LoadDetails extends DetailsEvent {
  const LoadDetails({
    this.id = '',
  });

  final String id;

  @override
  List<Object?> get props => [];
}
