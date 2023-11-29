import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = Provider((_) => Counter());
final CounterProvider = StateNotifierProvider<CounterStateNotifier, int>((ref) {
 return CounterStateNotifier();
});

class Counter {
 int _counter = 0;

 void incrementCounter() {
    _counter++;
 }

 int getCounter() {
    return _counter;
 }

 void resetCounter() {
    _counter = 0;
 }}

class CounterStateNotifier extends StateNotifier<int> {
 CounterStateNotifier() : super(0);

 void increment() {
    state = state + 1;
 }
 void reset() {
    state = 0;
 }

  void resetCounter() {}
}