import 'dart:async';

class Counter{

int _count = 0;
final _controller = StreamController<int>();

Stream<int> get stream => _controller.stream;

void increment() {
  _count++;
  _controller.add(_count);}

  void decrement() {
    _count--;

    if(_count<0){
      _controller.addError("Ошибка: счетчик не может быть отрицательным");
      _controller.close();
    } else {
      _controller.sink.add(_count);  
    }
  }

  void dispose() {
    _controller.close();
  } 
}