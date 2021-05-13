import 'package:rickandmorty/data/models/character.dart';

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
}
