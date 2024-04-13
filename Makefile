

.PHONY: run
run:
	go run -C ./moda .

.PHONY: protoc
protoc: moda/pb/msg.pb.go modb/pb/msg.pb.go

moda/pb/msg.pb.go: moda/pb/msg.proto
	@echo Build from module root.
	cd moda && protoc --go_out=. --go_opt=path_prefix=moda ./pb/msg.proto

modb/pb/msg.pb.go: modb/pb/msg.proto
	@echo Build from module subdirectory.
	cd modb/pb && protoc --go_out=. --go_opt=path_prefix=modb/pb,paths=source_relative msg.proto
