import 'package:flutter_test/flutter_test.dart';
import 'package:mining_monitoring/data/model/responses/check_device_id_response_entity.dart';
import 'package:mining_monitoring/data/model/responses/error_response_entity.dart';
import 'package:mining_monitoring/data/model/responses/user_response_entity.dart';

void main() {
  group('ApiResponse', () {
    test('handle login-tablet-unit response', () {
      final json = {
        "code": 200,
        "status": true,
        "message": "Success Login Tablet Unit",
        "data": {
          "id": "TEST",
          "role_id": 29,
          "role_name": "Operator",
          "is_default_role": false,
          "department_id": "OPE",
          "department_name": "Operation",
          "site_id": "001D",
          "site_name": "Head Office Jakarta",
          "fleet_id": null,
          "nik": "TEST01",
          "name": "TEST",
          "email": "test@gmail.com",
          "phone": "0812345",
          "is_active": true,
          "image_url": "https://assets.apps-madhani.com/fms/profiles/MDA5ODkzNjAwXzE0ODc3NjE0MTUtMTcwMjIzX1NlbmdrZXRhX1N0YXR1c19Lb250cmFrX0ZyZWVwb3J0X0Jhbm5lcl9BYmRpbGxhaC5qcGc=.jpg",
          "unit_id": "e676e18f12",
          "unit_code": "TR-TEST01",
          "unit_type_id": "e676e18f12",
          "login_type": 1,
          "login_status": 1,
          "login_at": "2025-01-13T13:57:57.005826885Z",
          "last_total_cycle": 0,
          "last_total_hauler": 0,
          "last_cycle_id": "",
          "last_activity_id": "",
          "last_pit": {
            "id": "",
            "name": ""
          },
          "last_hauler": {
            "hauler_id": "",
            "code": "",
            "operator_hauler_id": ""
          },
          "last_loader": {
            "loader_id": "",
            "code": "",
            "operator_loader_id": ""
          },
          "last_loading_point": {
            "id": "",
            "name": ""
          },
          "last_dumping_point": {
            "id": "",
            "name": ""
          },
          "last_material": {
            "id": "",
            "name": ""
          },
          "cycle_finished": true,
          "is_disposal": false
        }
      };

      final response = UserResponseEntity.fromJson(json);

      expect(response.code, 200);
      expect(response.status, true);
      expect(response.message, "Success Login Tablet Unit");
      expect(response.data.id, "TEST");
      expect(response.data.name, "TEST");
    });

    test('handle error login-tablet-unit', () {
      final json = {
        "code": 400,
        "status": false,
        "message": "User does not exist",
        "data": "User does not exist"
      };

      final response = ErrorResponseEntity.fromJson(json);

      expect(response.code, 400);
      expect(response.status, false);
      expect(response.message, "User does not exist");
      expect(response.data, "User does not exist");
    });


    test('handle get device by id response', () {
      final json = {
        "code": 200,
        "status": true,
        "message": "Device details found",
        "data": {
          "id": "TEST-DEVICE02",
          "is_active": true,
          "activated_at": "2025-01-12T15:17:15.467755Z",
          "created_at": "2025-01-12T15:16:56.225115Z",
          "updated_at": "2025-01-12T15:17:15.467754Z",
          "head_unit_sn": "TEST-DEVICE02",
          "equipment": {
            "id": "7651305c28",
            "site": {
              "id": "001D",
              "geo_json_url": "",
              "site": "001D",
              "name": "Head Office Jakarta",
              "client_name": "",
              "address": "",
              "latitude": "2",
              "longitude": "2",
              "is_active": true,
              "is_default": false,
              "created_at": "2024-11-21T10:11:34.440105Z",
              "updated_at": "2024-12-17T01:47:15.240255Z",
              "geojson": {
                "file_name": "map (5) (1).geojson",
                "coordinates": [
                  [
                    -0.47451682332048506,
                    117.14748214102622
                  ],
                  [
                    -0.4759970027516687,
                    117.15184135151696
                  ],
                  [
                    -0.47994867288623766,
                    117.15014383964285
                  ],
                  [
                    -0.47800678715884715,
                    117.14624635238238
                  ],
                  [
                    -0.47444892517344783,
                    117.14742782064548
                  ]
                ]
              }
            },
            "model": {
              "id": "a31dd00ce4",
              "no": "HD465-7",
              "name": "HD465-7",
              "capacity": 24,
              "radius_meters": null,
              "is_tyre": true,
              "tyre_class": "Medium",
              "is_active": true,
              "class": {
                "id": "ffff471c45",
                "name": "60 TON"
              },
              "measurement": {
                "id": "BCM",
                "name": "BCM"
              },
              "manufacture": {
                "id": "ea1070f3f7",
                "code": "KOM",
                "name": "KOMATSU (DATA ARLAN)",
                "is_active": true,
                "created_at": "2024-08-23T09:30:01.257294Z",
                "updated_at": "2024-09-30T10:43:42.892057Z",
                "model_count": 0,
                "type": "",
                "system": ""
              },
              "equipment_category": {
                "id": "da44893211",
                "name": "BIG DUMP TRUCK",
                "is_active": true,
                "is_default": false,
                "created_at": "2024-05-14T13:41:48.36Z",
                "updated_at": "2024-09-18T10:10:38.703086Z",
                "equipment_type": {
                  "id": "TR",
                  "name": "TRUCK RIGID (DATA ARLAN)",
                  "code": "TR",
                  "icon_url": "https://assets.apps-madhani.com/fms-dev/equipment/12345-20240918020951530.svg",
                  "is_active": true,
                  "is_default": false,
                  "modifications": null,
                  "created_at": "2024-01-05T09:47:01.306Z",
                  "updated_at": "2024-09-30T10:26:43.104284Z",
                  "app_background_url": "",
                  "app_label": ""
                }
              },
              "created_at": "2024-09-18T11:13:18.362941Z",
              "updated_at": "2024-10-01T03:10:09.362054Z"
            },
            "nearon_sn": "",
            "head_unit_sn": "TEST-DEVICE02",
            "device_id": "TEST-DEVICE02",
            "serial_number": "TR-4269",
            "code": "TR-4269",
            "hm": 4323,
            "km": 4123,
            "engine_no": "TR-4269",
            "engine_model": "TR-4269",
            "purchased_date": "2025-01-12T13:51:13Z",
            "purchased_status": "New",
            "condition_status": "Running",
            "outline_color": "#1dd4a6",
            "is_active": true,
            "created_at": "2025-01-12T15:21:31.255843Z",
            "updated_at": "2025-01-12T15:21:31.255843Z",
            "telemetry": {
              "total_distance_travelled": null
            },
            "site_factor_material": {
              "factor_material": 20,
              "material_id": "OB",
              "material_name": "Overburden (OB)",
              "measurement_id": "TON",
              "measurement_name": "Ton"
            },
            "installed_modification": {
              "id": "45fa316025",
              "modification": "DEFAULT RIGID DUMP TRUCK (DATA ARLAN)",
              "description": "DEFAULT RIGID DUMP TRUCK (DATA ARLAN)"
            },
            "site_factor_materials": [
              {
                "factor_material": 20,
                "material_id": "OB",
                "material_name": "Overburden (OB)",
                "measurement_id": "TON",
                "measurement_name": "Ton"
              }
            ]
          }
        }
      };

      final response = CheckDeviceIdResponseEntity.fromJson(json);

      expect(response.code, 200);
      expect(response.status, true);
      expect(response.message, "Device details found");
      expect(response.data.id, "TEST-DEVICE02");
    });
  });
}