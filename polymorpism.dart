// Polymorphism demonstration
abstract class Worker {
  void performTask();
}

class Plumber extends Worker {
  @override
  void performTask() => print("Fixing the plumbing!");
}

class Electrician extends Worker {
  @override
  void performTask() => print("Repairing electrical systems!");
}

void assignTask(Worker worker) {
  worker.performTask();
}

void main() {
  Worker plumber = Plumber();
  Worker electrician = Electrician();

  assignTask(plumber);      // Output: Fixing the plumbing!
  assignTask(electrician);  // Output: Repairing electrical systems!

  // Abstraction demonstration
  Drone deliveryDrone = Drone();
  deliveryDrone.startFlight();   // Output: Drone is taking off.
  deliveryDrone.land();          // Output: Drone is landing.

  // Interface demonstration
  NotificationSender notification = EmailSender();
  notification.sendNotification("You've got mail!"); // Output: Email notification: You've got mail!

  // Mixin demonstration
  MultiTalentedPerson person = MultiTalentedPerson();
  person.paint();  // Output: Painting a beautiful landscape.
  person.playGuitar(); // Output: Playing a soothing melody.
  person.cook(); // Output: Cooking a delicious meal.
}

// Abstraction demonstration
abstract class Aircraft {
  void startFlight();
  void land();
}

class Drone extends Aircraft {
  @override
  void startFlight() => print("Drone is taking off.");

  @override
  void land() => print("Drone is landing.");
}

// Interface demonstration
abstract class NotificationSender {
  void sendNotification(String message);
}

class EmailSender implements NotificationSender {
  @override
  void sendNotification(String message) => print("Email notification: $message");
}

// Mixin demonstration
mixin Painter {
  void paint() => print("Painting a beautiful landscape.");
}

mixin Musician {
  void playGuitar() => print("Playing a soothing melody.");
}

class MultiTalentedPerson with Painter, Musician {
  void cook() => print("Cooking a delicious meal.");
}
