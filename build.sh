#!/bin/sh
docker run -it --rm -v `pwd`/hitch:/build lewispeckover/apkbuilder -Kr
