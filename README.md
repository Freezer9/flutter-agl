# KUKSA Flutter Home Screen Application

This Flutter application serves as a home screen interface for displaying vehicle data using the KUKSA stack on an Automotive Grade Linux (AGL) platform. It connects to the `kuksa-databroker` to fetch and display real-time vehicle signals parsed from CAN bus data.

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

then run:

```
systemctl restart kuksa-can-provider
```

then test:

```
