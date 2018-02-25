docker build .
docker run -ti -v /Users/taiji/work/GoTelemetry:/GoTelemetry --name gotel golang /bin/bash
go get -u google.golang.org/grpc
go get -u github.com/golang/protobuf/protoc-gen-go

apt-get update
apt-get install zip

PROTOC_ZIP=protoc-3.3.0-linux-x86_64.zip
curl -OL https://github.com/google/protobuf/releases/download/v3.3.0/$PROTOC_ZIP
unzip -o $PROTOC_ZIP -d /usr/local bin/protoc
rm -f $PROTOC_ZIPcd /root

protoc --go_out=plugins=grpc:../pb cat.proto


go get -u google.golang.org/grpc/examples/helloworld/greeter_server
go get -u google.golang.org/grpc/examples/helloworld/greeter_clientprotoc --go_out=plugins=grpc:../pb cat.proto

