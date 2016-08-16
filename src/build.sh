#!/bin/bash
echo -n "Building new protocol.proto..."
protoc --proto_path=. --cpp_out=. protocol.proto
mv protocol.pb.cc protocol.pb.cpp
echo "done"
#make -f makefile.unix  USE_UPNP= BDB_INCLUDE_PATH=/usr/include/db6.0
make -f makefile.unix  USE_UPNP= BDB_INCLUDE_PATH=/usr/include/db4.8
