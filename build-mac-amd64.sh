export GOOS=darwin       # macOS 的系统标识符是 "darwin"
export GOARCH=amd64      # 64 位架构
export CGO_ENABLED=0     # 禁用 CGO
export GO111MODULE=on    # 启用 Go Modules

go build -v -a -tags netgo -o release/darwin/amd64/drone-github-release ./cmd/drone-github-release