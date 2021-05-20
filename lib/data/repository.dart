import 'package:rickandmorty/data/models/character.dart';
import 'package:rickandmorty/data/models/episode.dart';

class Repository {
  List<Character> getCharacters() {
    return [
      Character(
        id: 1,
        name: 'Рик Санчез',
        status: 'alive',
        species: 'Человек',
        gender: 'Мужской',
        image: 'rick_sanches.jpg',
      ),
      Character(
        id: 2,
        name: 'Директор Агентства',
        status: 'alive',
        species: 'Человек',
        gender: 'Мужской',
        image: 'director.jpg',
      ),
      Character(
        id: 3,
        name: 'Морти Смит',
        status: 'alive',
        species: 'Человек',
        gender: 'Мужской',
        image: 'morty_smit.jpg',
      ),
      Character(
        id: 4,
        name: 'Саммер Смит',
        status: 'alive',
        species: 'Человек',
        gender: 'Женский',
        image: 'summer_smit.jpg',
      ),
      Character(
        id: 5,
        name: 'Альберт Эйнштейн',
        status: 'dead',
        species: 'Человек',
        gender: 'Мужской',
        image: 'albert.jpg',
      ),
      Character(
        id: 6,
        name: 'Алан Райлс',
        status: 'dead',
        species: 'Человек',
        gender: 'Мужской',
        image: 'rick_sanches.jpg',
      ),
    ];
  }

  List<Episode> getEpisodes() {
    return [
      Episode(
        id: 1,
        date: '2 декабря 2013',
        title: 'Пилот',
        series: 1,
        image: 'series1.jpg',
        episode: 'episode1',
      ),
      Episode(
        id: 2,
        date: '9 декабря 2013',
        title: 'Пес-газонокосильщик',
        series: 2,
        image: 'series2.jpg',
        episode: 'episode1',
      ),
      Episode(
        id: 3,
        date: '15 декабря 2013',
        title: 'Анатомический парк',
        series: 3,
        image: 'series3.jpg',
        episode: 'episode1',
      ),
      Episode(
        id: 4,
        date: '22 декабря 2013',
        title: 'Пилот',
        series: 4,
        image: 'series1.jpg',
        episode: 'episode1',
      ),
      Episode(
        id: 5,
        date: '29 декабря 2013',
        title: 'Пилот 2',
        series: 5,
        image: 'series3.jpg',
        episode: 'episode1',
      ),
      Episode(
        id: 6,
        date: '10 января 2014',
        title: 'Парк',
        series: 6,
        image: 'series2.jpg',
        episode: 'episode1',
      ),
    ];
  }
}
