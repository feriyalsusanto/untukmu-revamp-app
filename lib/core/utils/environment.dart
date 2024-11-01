/// An abstract class that defines different environment constants.
///
/// This class provides static constants that represent different
/// environments in which the application can run. These constants
/// can be used throughout the application to conditionally execute
/// code based on the current environment.
abstract class Environment {
  /// Represents the development environment.
  static const dev = 'dev';

  /// Represents the production environment.
  static const prod = 'prod';

  /// Represents the local environment.
  static const local = 'local';
}
