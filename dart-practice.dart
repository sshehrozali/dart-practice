void main() {
  // Normal class
  User user1 = new User("Tailor", "Tyle", "tailor123");
  print("User 1: ${user1.firstname} ${user1.lastname}");
  
  User user2 = new User("Liana", "Tina", "liana123");
  print("User 2: ${user2.firstname} ${user2.lastname}");
  
  print("\n--------\n");
  
  // Super class (inherited)
  SuperUser admin = new SuperUser("Jason", "Joy", "admin123");
  print("Super User: ${admin.firstname} ${admin.lastname}");
  admin.login();  // Inherited from User class
  admin.publish();
}

// User Class
class User {
  String? firstname;
  String? lastname;
  String? password;
  
  User(String firstname, String lastname, String password) {
    this.firstname = firstname;
    this.lastname = lastname;
    this.password = password;
  }
  
  void login() {
    print("Logged in! -> User");
  }
}

// This class has everything from above class (think it like a super user who has access to all of the functionalties :D)
// This class also includes methods from above class (super user can login + publish, but above user class can only login, sad :/)
class SuperUser extends User {
   
  SuperUser(String firstname, String lastname, String password) : super(firstname, lastname, password);
  
  void publish() {
    print("Published! -> Super User");
  }
}