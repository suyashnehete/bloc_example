import 'package:bloc/bloc.dart';
import 'package:bloc_example/data/models/weather.dart';
import 'package:bloc_example/data/reposiotries/weather_repository.dart';
import 'package:meta/meta.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final _weatherRepository = WeatherRepository();
  WeatherBloc() : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) async {
      if (event is WeatherRequest) {
        emit(WeatherLoadInprogress());
        try {
          final weatherResponse =
              await _weatherRepository.getWeather(event.cityName);
          emit(WeatherLoadSuccess(weather: weatherResponse));
        } catch (e) {
          emit(WeatherLoadFailure(error: e.toString()));
        }
      }
    });
  }
}
