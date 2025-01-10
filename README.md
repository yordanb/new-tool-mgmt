### App Link Domain
https://vercel-web-gue.vercel.app/.well-known/assetlinks.json

### How to Test App Link
```
adb shell am start -W -a android.intent.action.VIEW -d "https://vercel-web-gue.vercel.app/product/123" com.example.hyper_supabase
```

### How to Test Deep Link
```
adb shell am start -W -a android.intent.action.VIEW -d "x9codeid://open.my.app" com.example.hyper_supabase
```

### Notification Setup
1. Add your icon to /android/app/src/main/res/
2. Don't forget to run flutterfire configure @ packages/feature/main_app

### Clean Architecture Project Example
This project is an example of a clean architecture project using the following technologies:
- Flutter
- Supabase
- Bloc (Cubit)

### Features
- Sign in with email
- Sign up with email
- Sign out
- CRUD operations
- Unit tests
- Widget tests

### How to run
1. Clone this repository
2. Run `build.bat` or `sh build.bat` (for Linux)
3. Run `flutter run`

### Packages
This project is divided into several packages:
- package/feature/main_app
- package/shared/core
- package/shared/data
- package/shared/domain


### What's Clean Architecture?
Clean Architecture is a software design philosophy that separates the software into layers. Each layer has its own responsibility. The layers are:
- Presentation
- Domain
- Data

### Presentation
This layer is responsible for the UI. It contains the widgets, pages, and blocs. The blocs are responsible for handling the business logic.

### Domain
This layer is responsible for the business logic. It contains the use cases and the models.

### Data
This layer is responsible for the data. It contains the repositories and the data sources.

### Why Clean Architecture?
- Separation of concerns
- Testability
- Maintainability
- Scalability

### What's SOLID?
SOLID is a set of software design principles that help us write clean code. SOLID stands for:
- Single Responsibility Principle
- Open/Closed Principle
- Liskov Substitution Principle
- Interface Segregation Principle
- Dependency Inversion Principle

### What's Bloc?
Bloc is a state management library for Flutter. It helps us manage the state of our application. Bloc stands for Business Logic Component.

### What's Cubit?
Cubit is a lightweight state management library for Flutter. It helps us manage the state of our application. Cubit is a subclass of Bloc.

### What's Supabase?
Supabase is an open-source Firebase alternative. It provides a set of tools to build a backend for your application. It provides authentication, database, storage, and more.

### The difference between Model and Entity?
- Model is always a data class
- Entity is always a domain class
- Presentation layer only knows about Entity
- Presentation must not know about Model and it shouldn't consume anything directly from the Data layer
- If you want to pass data from the Data layer to the Presentation layer, you must convert it to a UseCase or Entity first

### Where should I implement these codes: HTTP Request, Bluetooth Connection, Printing, Websocket, Write FILE, Read FILE, etc?
- You should implement these codes in the Data layer
- The Data layer is responsible for the data
- The Data layer is responsible for the data sources
- The Data layer is responsible for the repositories
