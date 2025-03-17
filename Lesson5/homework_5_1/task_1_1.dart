void main(){
List<int> numbers = [1, 2, 3, 4, 5, 6];
  List<int> evenNumbers = filterEvenNumbers(numbers);
  print(evenNumbers);  
}

List<int> filterEvenNumbers(List<int> numbers) {
  return numbers.where((element) => element % 2 == 0).toList();
}