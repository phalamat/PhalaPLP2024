//Developer: Phala Mathobela(phalamat676@gmail.com)
//This program has several data types in Dart as requested in the assignemt

void main() {
    // This is a Boolean data type
  bool isPatient = true;
  print("Is Patient: $isPatient");
  
    //This is a Null data type
  String? nullableString = null;
  print("Nullable String: $nullableString");
  
  // This is an Integer data type
  int age = 100;
  print("Age: $age"); 
  
  //This is Runes data type
  Runes heart = Runes('\u2665');
  print("Heart: ${String.fromCharCodes(heart)}");
  
  // This is a Double data type
  double height = 1.75;
  print("Height: $height");
  
  // This is an String data type
  String name = "Stanley Mungaa";
  print("Name: $name"); 
  
  // List data type (dynamic)
  List<dynamic> cars = ["BMW", "Toyota", "Benz"];
  print("My cars: $cars"); 
  
  // Accessing list elements
  print("First fruit: ${cars[0]}");
  
  // Map data type
  Map<String, dynamic> person = {
    "name": "Stanley",
    "age": 100,
    "isPatient": false
  };
  print("Person: $person"); 
  
  // Accessing map elements
  print("Name: ${person["name"]}"); 
  print("Age: ${person["age"]}"); 
  print("Is Patient? ${person["isPatient"]}"); 
}