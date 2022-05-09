#!/bin/bash
echo -e "\e[01;34m[*]\e[0m 正在编译Linux..."
CGO_ENABLED=0 GOOS=linux GOARCH=386 go build -trimpath -ldflags="-s -w" -o build/linux_frpc32 ./cmd/frpc
CGO_ENABLED=0 GOOS=linux GOARCH=386 go build -trimpath -ldflags="-s -w" -o build/linux_frps32 ./cmd/frps
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -trimpath -ldflags="-s -w" -o build/linux_frpc64 ./cmd/frpc
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -trimpath -ldflags="-s -w" -o build/linux_frps64 ./cmd/frps

echo -e "\e[01;34m[*]\e[0m 正在编译Darwin..."
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -trimpath -ldflags="-s -w" -o build/darwin_frpc64 ./cmd/frpc
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -trimpath -ldflags="-s -w" -o build/darwin_frps64 ./cmd/frps

echo -e "\e[01;34m[*]\e[0m 正在编译Windows..."
CGO_ENABLED=0 GOOS=windows GOARCH=386 go build -trimpath -ldflags="-s -w" -o build/windows_frpc32.exe ./cmd/frpc
CGO_ENABLED=0 GOOS=windows GOARCH=386 go build -trimpath -ldflags="-s -w" -o build/windows_frps32.exe ./cmd/frps
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -trimpath -ldflags="-s -w" -o build/windows_frpc64.exe ./cmd/frpc
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -trimpath -ldflags="-s -w" -o build/windows_frps64.exe ./cmd/frps

echo -e "\e[01;32m[*]\e[0m 编译完毕!"