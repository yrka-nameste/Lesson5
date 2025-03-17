import 'counter.dart';

void main() {
  final counter = Counter();

  final subscription = counter.stream.listen(
    (value) => print('Текущее значение счетчика: $value'),
    onError: (error) => print(error),
    onDone: () => print('Поток завершен'),
  );

  counter.increment();
  counter.increment();
  counter.decrement();
  counter.decrement();
  counter.decrement(); 

  Future.delayed(Duration(seconds: 2), () {
    subscription.cancel();
    counter.dispose();
  });
}