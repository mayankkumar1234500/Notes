# 🗒️ Notes Application with Spring Boot and Thymeleaf

## 📖 Introduction

This project demonstrates a complete **Notes Management System** built with **Spring Boot** and **Thymeleaf**.

It includes features such as:

- ✅ User Registration and Login (with Spring Security)
- 📝 Create, Read, Update, and Delete Notes
- 🛡️ Secure session management
- 📊 Notes linked per user



## ⚙️ Technologies Used

- ☕ Java 17+
- 🌱 Spring Boot 3.x
- 🌐 Spring MVC
- 🛠️ Spring Data JPA (Hibernate)
- 🔐 Spring Security
- 🧾 Thymeleaf (Template Engine)
- 💾 H2 / MySQL Database
- 🧰 Maven

## 📂 Project Structure

```bash
src/
└── main/
    ├── java/
    │   └── com.notes.app/
    │       ├── controller/       # Handles web requests
    │       ├── model/            # Entity classes: User, Note
    │       ├── repository/       # Data access layer
    │       ├── service/          # Business logic interfaces
    │       └── serviceImpl/      # Service implementations
    └── resources/
        ├── templates/            # Thymeleaf views
        │   ├── login.html
        │   ├── register.html
        │   ├── notes.html
        │   └── add_note.html
        └── application.properties

👤 User Features
🔐 Register new users with encrypted passwords

🔓 Login securely using Spring Security

📝 Add new notes with title & content

📄 View personal notes after login

🛠️ Edit / Delete notes as needed

🛠️ How to Build & Run

▶️ Using Maven:
bash
Copy
Edit
./mvnw clean install
./mvnw spring-boot:run
▶️ Using Gradle:
bash
Copy
Edit
./gradlew build
./gradlew bootRun
Once the app is running, visit:
📍 http://localhost:8080

🔗 Useful Endpoints
Endpoint	Description
/register	User registration form
/login	Login form with auth
/notes	Notes dashboard (secure)
/notes/add	Create a new note

🙋 Author
👨‍💻 mayankkumar1234500
