import 'dart:core';
import 'dart:collection';



abstract class Sequence<T>{

  void push (T element);

  T pop();

  bool isEmpty();
}

class Stack<T> extends Sequence{
  final _stack = DoubleLinkedQueue<T>();

  @override
  bool isEmpty() => _stack.isEmpty;

  @override
  T pop() {
    final lastElement = _stack.last;
    _stack.remove(_stack.first);
    return lastElement;
  }

  @override
  void push(element) {

    _stack.addFirst(element);
  }

}

class Queue<T> extends Sequence{
  final _queue = DoubleLinkedQueue<T>();

  @override
  bool isEmpty() => _queue.isEmpty;

  @override
  T pop() {
    final lastElement = _queue.last;
    _queue.remove(_queue.first);
    return lastElement;
  }

  @override
  void push(element) {
    _queue.addLast(element);
  }

}

void main(List<String> arguments) {
  final myStack = Stack<int>();
  myStack.push(1);
  final top = myStack.pop();



}
