part of 'weather_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherBlocFailure extends WeatherState {}

final class WeatherBlocSuccess extends WeatherState{
  final Weather weather;

  const WeatherBlocSuccess({required this.weather});

  @override
  List<Object> get props => [weather];
}
