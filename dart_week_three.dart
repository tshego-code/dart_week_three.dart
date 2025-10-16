// -----------------------------
// ART-WEEK-3 OOP Assignment
// -----------------------------

// 1️⃣ Encapsulation
class BankAccount {
  String _accountNumber; // private variable
  double _balance;       // private variable

  BankAccount(this._accountNumber, this._balance);

  // Getter for balance
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited \$${amount}. New balance: \$$_balance");
    } else {
      print("Invalid deposit amount!");
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrew \$${amount}. New balance: \$$_balance");
    } else {
      print("Invalid withdrawal or insufficient balance!");
    }
  }
}

// 2️⃣ Inheritance
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hi, my name is $name and I am $age years old.");
  }
}

// Subclass of Person
class Student extends Person {
  String course;

  Student(String name, int age, this.course) : super(name, age);

  void study() {
    print("$name is studying $course.");
  }
}

// 3️⃣ Polymorphism (Method Overriding)
class Animal {
  void makeSound() {
    print("Some generic animal sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks 🐶");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows 🐱");
  }
}

// 4️⃣ Abstraction
abstract class Shape {
  double area();
  double perimeter();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.1416 * radius * radius;

  @override
  double perimeter() => 2 * 3.1416 * radius;
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;

  @override
  double perimeter() => 2 * (width + height);
}

// -----------------------------
// Main Function to Test All
// -----------------------------
void main() {
  print("=== Encapsulation Example ===");
  BankAccount account = BankAccount("12345", 1000.0);
  account.deposit(500);
  account.withdraw(200);
  print("Balance via getter: \$${account.balance}\n");

  print("=== Inheritance Example ===");
  Student student = Student("Tshegofatso", 22, "Dart Programming");
  student.introduce();
  student.study();
  print("");

  print("=== Polymorphism Example ===");
  List<Animal> animals = [Dog(), Cat()];
  for (var animal in animals) {
    animal.makeSound();
  }
  print("");

  print("=== Abstraction Example ===");
  Shape circle = Circle(5);
  Shape rectangle = Rectangle(4, 6);
  print("Circle area: ${circle.area()}, perimeter: ${circle.perimeter()}");
  print("Rectangle area: ${rectangle.area()}, perimeter: ${rectangle.perimeter()}");
}
