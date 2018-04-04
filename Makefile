all : json-diff json-empty

json-diff : json-diff.go
	go build json-diff.go

json-empty : json-empty.go
	go build json-empty.go

clean :
	rm json-diff json-empty 2> /dev/null || true

install : all
	install json-diff /usr/local/bin
	install json-empty /usr/local/bin