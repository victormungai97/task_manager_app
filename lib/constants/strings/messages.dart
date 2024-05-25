// constants/strings/messages.dart

part of 'strings.dart';

/// Class containing messages to be shown to users

class Messages {
  static const no_username = 'Please provide a username';
  static const empty_password = 'Please provide a password';
  static const short_password = 'Provide a password with at least 8 characters';
  static const url_missing = 'URL not provided';
  static const invalid_data = 'Invalid data\nContact support';
  static const server_not_responding =
      'Server did not respond. Contact support';
  static const unexpected_response = 'Unexpected response received';
  static const indeterminate_response = 'Unable to determine response received';
  static const request_error = 'Error occurred during request';
  static const completion_exception =
      'Unable to complete.\nPlease contact support';
  static const generic_error = 'Something went wrong. Retry or contact support';
  static const user_missing = 'No user found';
}
