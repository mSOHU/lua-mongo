## lua_ngx support

* work with lua_ngx's cosocket
* compatible with luajit-2.0 via https://github.com/keplerproject/lua-compat-5.2
* METHOD: auth
* METHOD: once time query
* METHOD: count


## Introduction

This is a simple lua mongo driver, work in progress.


## Building

Install lua-bson first.
https://github.com/mSOHU/lua-bson

make linux


## Features

* connect to mongod
* auth with mongod (new!)
* runCommand
* insert document
* update document
* once time query: query, limit, skip, sort (new!)
* count: query (new!)
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
