Future<String> fetchData(){
  return Future.delayed(Duration(seconds: 2), () => 'Данные загружены');
}

void main() async{
  fetchData().then((value) => print(value));
}