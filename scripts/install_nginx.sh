#!/usr/bin/env bash

PKG="nginx"
which ${PKG}  || {
   apt-get update -y 
    apt-get install -y ${PKG}
} 
