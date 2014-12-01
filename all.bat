@echo off
set GOOS=linux
set GOARCH=arm
go build
adb push gohelloworld /data/local/tmp
adb shell chmod 755 /data/local/tmp/gohelloworld
adb shell /data/local/tmp/gohelloworld