

.PHONY: run
run: protoc
	go run -C ./moda .

.PHONY: protoc
protoc: moda/pb/msg.pb.go modb/pb/msg.pb.go

moda/pb/msg.pb.go: moda/pb/msg.proto
	protoc --go_out=. $<

modb/pb/msg.pb.go: modb/pb/msg.proto
	protoc --go_out=. $<
