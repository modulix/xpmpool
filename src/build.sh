#!/bin/bash
protoc --proto_path=. --cpp_out=. protocol.proto
mv protocol.pb.cc protocol.pb.cpp
