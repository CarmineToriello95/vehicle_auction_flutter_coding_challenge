# vehicle_auction__flutter_coding_challenge

https://github.com/CarmineToriello95/vehicles_dealing_flutter_coding_challenge/assets/24319107/e3552062-6144-4419-bd4f-958830e26a74

A Flutter challenge for a vehicle auction search scenario.

It requires:

 - Handling login of a user. Store login credentials locally so that the user is automatically logged in when opening the app in the future.

 - Requesting data with http package. The response can return a success object, multiple choices, an error object or throw exception. Therefore it's needed to handle all these scenarios.

 - Showing the data or the errors to the user.

## Getting Started

-  clone the repo
-  run pub get for dependencies
-  run build_runner for code generation

Login User credentials (can be found in the file lib/core/mocks/auth_client.dart):
-  email: test@test.com
-  password: 1234qwer

## Coding methodology

Main packages used:
*dependency injection* (get_it, injectable), *reactive programming* (rxdart, flutter_bloc), *functional programming* (dartz), freezed.

The project has been structured following the [clean code architecture described by uncle Bob](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html).

Therefere the app is structured with the following directories and files:

- lib/
    - core/
    - features/
    - di_config.dart
    - main.dart

### Core

The **core** folder contains utility services that can be used throughout all the features, such as input fields validation or errors.

### Features

The **features** folder contains the features. Each feature is structured in the following way:
- data
- domain
- presentation

The **data** layer is the one that interacts with the outside world in case of remote data source or with the local storage in case of local data source.

The **domain** layer is made of pure dart code and contains the entities that characterize the core of the feature

The **presentation** layer contains the code for showing the data to the users throught the UI and manages the state of the UI
