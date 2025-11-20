rm -rf lib/schemaless_proto/
mkdir -p lib/schemaless_proto/

protoc --dart_out=grpc:lib/schemaless_proto \
    google/protobuf/empty.proto \
    google/protobuf/duration.proto \
    google/protobuf/struct.proto \
    google/protobuf/timestamp.proto \
    --proto_path=../management/proto/ \
    --proto_path=../application/proto \
    -Iprotos ../management/proto/**/*.proto \
    -Iprotos ../application/proto/**/*.proto