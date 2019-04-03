#!/usr/bin/env bash

#c++ -O3 -Wall -shared -std=c++11 -fPIC `python3 -m pybind11 --includes` \
#  -I .venv/include/site/python3.7/ \
#  -I /usr/local/Cellar/python/3.7.2_2/Frameworks/Python.framework/Versions/3.7/include/python3.7m/ \
c++ -O3 -Wall -shared -std=c++11 -fPIC \
  -Wl,-undefined,dynamic_lookup \
 `python3 -m pybind11 --includes` \
  mylibs.cpp -o mylibs`python3-config --extension-suffix`
