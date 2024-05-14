class Stack<T> {
  List<T> _items = [];

  // Push an item onto the stack
  void push(T item) {
    _items.add(item);
  }

  // Pop an item from the stack
  T? pop() {
    if (isEmpty) {
      return null;
    }
    return _items.removeLast();
  }

  // Check if the stack is empty
  bool get isEmpty => _items.isEmpty;
}

void main() {
  // Create a stack of strings
  Stack<String> stack = Stack();


  stack.push("ko");
  stack.push("unta");
  stack.push("pasar");

  // Pop elements from the stack and print them
  while (!stack.isEmpty) {
    print(stack.pop());
  }
}
