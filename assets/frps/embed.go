package frpc

import (
	"embed"

	"frp/assets"
)

//go:embed static/*
var content embed.FS

func init() {
	assets.Register(content)
}
