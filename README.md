
# Flutter Login UI Project

A simple and elegant **Flutter Login Page** with wallpaper background using custom screen design, form validation, password protection, and third-party login icons. This project also includes navigation to a Sign-Up screen.

## 📱 Features

- Custom UI layout with wallpaper background
- Form validation for email and password
- "Remember Me" checkbox functionality
- Forgot password option (dummy)
- Sign In button with validation checks
- Social media login icons (Facebook, Apple)
- Navigation to Sign Up page

## 🧱 Folder Structure



project\_root/
│
├── lib/
│   ├── main.dart
│   ├── SignIn\_screen.dart     # Login page screen
│   ├── SignUp\_screen.dart     # Placeholder Sign Up screen
│   └── custom\_screen.dart     # Custom background wrapper



## 📦 Packages Used

No external packages are required other than default Flutter SDK libraries.

## 🖼️ CustomScreen (Background Wallpaper)

The `CustomScreen` widget is used to wrap the login screen with a wallpaper background and styled top card. You can customize this in `custom_screen.dart`.

## 🚀 Getting Started

### 1. Clone this repository:


### 2. Run the app:

```bash
flutter pub get
flutter run
```

## 🧪 Validation Rules

* **Email Field**: Cannot be empty
* **Password Field**: Cannot be empty
* **Remember Me**: Must be checked to proceed

## 🛠️ How It Works

* The `SignInScreen` is the main login screen.
* Email and password are validated using `FormState`.
* If validation passes and "Remember Me" is checked, a snackbar shows "Processing Data".
* Navigation to Sign Up is enabled via `Navigator.push`.

## 🔁 Future Improvements

* Connect backend for authentication
* Add real forgot password flow
* Implement third-party login integrations (e.g. Firebase, OAuth)

## 📄 License

This project is open source and free to use for educational or personal projects.

---
## Made by gokul lavanya
