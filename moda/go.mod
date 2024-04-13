module moda

go 1.22.1

replace (
	google.golang.org/protobuf => ../../protobuf-go
	modb => ../modb
)

require google.golang.org/protobuf v1.33.0

require modb v0.0.0-00010101000000-000000000000 // indirect
