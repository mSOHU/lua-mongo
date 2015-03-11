## Introduction

This is a simple lua mongo driver, work in progress.

## Lua on Nginx support

* work with lua_ngx's cosocket
* compatible with luajit-2.0 via https://github.com/keplerproject/lua-compat-5.2

## Building

Install lua-bson first.
https://github.com/cloudwu/lua-bson

cd lua-bson
git clone https://github.com/keplerproject/lua-compat-5.2
make linux


## Features

* connect to mongod
* auth with mongod (new)
* runCommand
* insert document
* update document
* find return basic cursor, cursor hasNext() and next()
* findone

## Todo list

* write concern
* replica set
* gridFS
* tailable cursor
* more options for cursor
* more command
* and more ...

## Getting started

See test.lua
