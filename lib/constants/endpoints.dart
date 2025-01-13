class Endpoints {
  Endpoints._();
  static const String baseUrl = 'https://dev-api-fms.apps-madhani.com/v1';
  static const int receiveTimeout = 15000;
  static const int connectionTimeout = 30000;

  static const String websocketUrl = 'wss://wss.apps-madhani.com/connection/websocket';

  static const String tabletLogin = '/login-tablet-unit';
  static const String checkDeviceById = '/equipments/devices/';
}
