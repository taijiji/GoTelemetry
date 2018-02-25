docker build .
docker run -ti -v /Users/taiji/work/GoTelemetry:/GoTelemetry --name gotel golang /bin/bash
go get -u google.golang.org/grpc
go get -u github.com/golang/protobuf/protoc-gen-go


