#!/bin/bash

exec nginx -g "daemon off;"&
cd /8001
exec python3 -m http.server 8001