<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

### Command for Generating F1 Proto files


```bash
cd protos

protoc \
  --proto_path=protos \
  --cpp_out=lib/generated \ # Optional: If you need C++ output
  --go_out=lib/generated \ # Optional: If you need Go output
  --dart_out=grpc:lib/generated \ # Dart output with gRPC support
  protos/f1/*.proto
```

### Command for Generating gRPC Go Service files

```bash
cd protos
protoc \
  --proto_path=protos \
  --go_out=../server 
  --go-grpc_out=../server \
  protos/f1/*.proto
```