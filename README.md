# Employee Directory App

## Objective
The objective of this Flutter app is to display a directory of employees. Employees who have been with the organization for more than 5 years and are active will be highlighted in green color. The app utilizes Firebase as the database and backend.

## Project Structure
- **Model**: Contains the `DataModel` class used to create a model to store employee data.
- **Services**: Includes `FirebaseFetch` class to perform read operations from the Firebase database.
- **Utils**: Provides separate code files for various components to enhance reusability and maintain clean code.
- **View**: Contains the UI screens of the app.
- **ViewModel**: Utilizes the Provider package for state management and creates viewModels for each screen.

## Features
- Display a list of employees.
- Highlight employees who have been with the organization for more than 5 years and are active in green color.
- Retrieve employee data from Firebase database.
- Utilize Provider package for efficient state management.
- Organize code structure to enhance reusability and maintainability.

## Installation
1. Clone the repository: `git clone [repository_url]`
2. Navigate to the project directory: `cd employee_directory_app`
3. Install dependencies: `flutter pub get`
4. Configure Firebase:
   - Create a Firebase project on the Firebase Console.
   - Add your Android app to the Firebase project.
   - Download the `google-services.json` file and place it in the `android/app` directory of your Flutter project.
   - Follow the instructions provided by Firebase to complete the setup.
5. Run the app: `flutter run`



Thank You
