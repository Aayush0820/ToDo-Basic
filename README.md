# 📝 ToDo-Basic

A simple and clean Flutter To-Do List app that lets users create, update, delete, and view tasks. Integrated with a RESTful API backend, this app demonstrates key mobile development principles like state management, responsive UI, and asynchronous network calls.

---

## 🚀 Features

- ✅ Add, update, delete, and view tasks
- ☁️ RESTful API integration (CRUD operations)
- 📶 Real-time UI updates with local state management (e.g. BLoC/Provider)
- 🧠 Task properties: title, description, status, priority, created date
- 📲 Responsive UI for both Android and iOS
- ⚠️ Error handling and loading indicators
- 🗃️ Offline support with SQLite or Hive (optional/future)

---

## 🧱 Tech Stack

- **Flutter** & **Dart**
- **HTTP** package for API calls
- **State Management**: BLoC / Provider (customizable)
- **JSON** for data exchange
- **Git & GitHub** for version control

---

## 📦 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Aayush0820/ToDo-Basic.git
   cd ToDo-Basic

2.Install dependencies
```
flutter pub get
Run the app

flutter run
```
🌐 API Integration
The app connects to a REST API with the following endpoints:

Method	Endpoint	Description
GET	/tasks	Fetch all tasks
POST	/tasks	Create a new task
PUT	/tasks/:id	Update a task
DELETE	/tasks/:id	Delete a task

⚙️ Make sure to update the API base URL in your ApiService class.

📁 Project Structure
```
lib/
├── models/
│   └── task_model.dart
├── services/
│   └── api_service.dart
├── screens/
│   └── home_screen.dart
├── widgets/
│   └── task_tile.dart
├── main.dart
```
✍️ Author
Aayush Kumar

GitHub @Aayush0820

📜 License
This project is open source and available under the MIT License.
