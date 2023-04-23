import 'dart:async';

class CounterBloc{
  StreamController<int> _valueController = StreamController<int>();
  int _value = 0;

  void increment(){
    _value++;
    _valueController.sink.add(_value);
  }

  Stream<int> getStream() {
    return _valueController.stream;
}

  void dispose(){
    _valueController.close();
  }
}