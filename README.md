# flutter_ics_homescreen

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Useful environment variables

- **DEBUG_DISPLAY** enables the Device Preview.
- **DISABLE_BKG_ANIMATION** disables the main background animation.

Use them like this:

```
flutter run --dart-define=DEBUG_DISPLAY=true,DISABLE_BKG_ANIMATION=true
```

## Architecture Overview

1. **Hardware data**  
   ↓  
2. **Linux via socketCAN on `can0`**  
   ↓  
3. **`kuksa-can-provider`**  
   - `can0` is listened by this service
   - Parses CAN data using the provided `.dbc` file (AGL v1 format)
   - Converts parsed signals to VSS (Vehicle Signal Specification) paths 

   ↓  
4. **`kuksa-databroker`**  
   - Receives VSS-formatted data from the CAN provider  

   ↓  
5. **`kuksa-client` (this Flutter application)**  
   - Consumes or queries vehicle data using VSS paths  
   - Displays the data in the Flutter UI

```
This describes the data flow from hardware CAN signals all the way to your Flutter app UI, using the AGL and KUKSA stack.
```

## Mapping VSS paths to UI Components

Paths for VSS data and the DBC file used for parsing CAN signals are located at:
```
/usr/share/vss/vss.json
/usr/share/dbc/agl-vcar.dbc
```

The VSS paths map the data using the signals defined in the provided DBC file. For example in this json snippet:

```json
{
"Speed": {
  "datatype": "float",
  "dbc2vss": {
    "interval_ms": 100,
    "signal": "PT_VehicleAvgSpeed" <-- here is the mapping to the DBC signal you can customize it
  },
  "description": "Vehicle speed.",
  "type": "sensor",
  "unit": "km/h",
  "vss2dbc": {
    "signal": "PT_VehicleAvgSpeed" <-- here is the mapping to the DBC signal you can customize it
  }
}
}
```

So you can make a custom mapping by changing the signal name in the `dbc2vss` and `vss2dbc` sections. Then change the config.ini in:
```
/etc/kuksa-can-provider/config.ini
```

and change the `mapping` entry to point to your custom VSS mapping file.


