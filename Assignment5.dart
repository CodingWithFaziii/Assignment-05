import 'dart:io';

void main() {
  stdout.write("Enter the student's score (0-100): ");
  int? score = int.tryParse(stdin.readLineSync()!);

  if (score == null || score < 0 || score > 100) {
    print("Invalid score entered.");
  } else if (score >= 90) {
    print("Grade A");
  } else if (score >= 80) {
    print("Grade B");
  } else if (score >= 70) {
    print("Grade C");
  } else if (score >= 60) {
    print("Grade D");
  } else {
    print("Grade F");
  }

  List shoppingCart = [20.5, 35.0, 50.25, 10.0];
  double total = 0.0;

  for (double price in shoppingCart) {
    total += price;
  }

  print("Total: \$${total.toStringAsFixed(2)}");

  double discount = 0.0;

  if (total > 200) {
    discount = 0.20;
    print("Discount Applied: 20%");
  } else if (total > 100) {
    discount = 0.10;
    print("Discount Applied: 10%");
  } else {
    print("No Discount Applied.");
  }

  double finalTotal = total - (total * discount);
  print("Final Total: \$${finalTotal.toStringAsFixed(2)}");

  Map studentRecords = {
    101: 'Faiza',
    102: 'Usman',
    103: 'Talha',
    104: 'Tayyab',
    105: 'saim'
  };

  print("Student Records:");
  studentRecords.forEach((id, name) {
    print("ID: $id, Name: $name");
  });

  stdout.write("\nEnter the Student ID to search: ");
  int? searchId = int.tryParse(stdin.readLineSync()!);

  if (searchId == null) {
    print("Invalid input. Please enter a numerical Student ID.");
  } else if (studentRecords.containsKey(searchId)) {
    print("Student Name: ${studentRecords[searchId]}");
  } else {
    print("Student with ID $searchId does not exist.");
  }
}
