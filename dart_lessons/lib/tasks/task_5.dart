final searchMaxInArray = SearchMaxInArray();

class SearchMaxInArray {
  void call() {
    List<int> array = [5, 10, 2, 4];
    array.sort();
    print('Максимальное значение списка из $array - это ${array[0]}');
  }
}
