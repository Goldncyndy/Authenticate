# Authenticate

DI In Flutter

Example of Dependency Injection in flutter:
class Car() { 
   // database instance
   final Wheel _wheel;
   // Constructor
   Car(this._wheel);
   drive() {   
      wheel.spin() 
   }
}

PseudoCode =>

Step 1: Create a class 
Step 2: Define properties and methods of the class
Step 3: For class usage, import the defined in order to be able to reuse its functionalities in the new class
Step 4: Properties and methods can be overriden or reused, if need be (if not declared as final) 
