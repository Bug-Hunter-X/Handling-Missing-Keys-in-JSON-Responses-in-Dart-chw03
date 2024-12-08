# Handling Missing Keys in JSON Responses in Dart

This repository demonstrates a common error in Dart when handling JSON responses from APIs and provides a solution for gracefully handling missing keys.

## The Problem

The `bug.dart` file contains code that fetches JSON data from an API.  It attempts to access a specific key ('someKey') in the JSON response. However, if the JSON doesn't contain this key, the code will throw a runtime exception.

## The Solution

The `bugSolution.dart` file demonstrates a safer approach. Instead of directly accessing the key, it checks for its existence before attempting to retrieve its value, preventing a runtime error.

## How to Run

1. Clone the repository.
2. Run `dart bug.dart` to see the error. (You'll need the `http` package installed: `pub add http`)
3. Run `dart bugSolution.dart` to see the corrected solution.
