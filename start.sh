#!/bin/bash
set -e

chmod +x pocketbase/pocketbase

# Avtomatik super admin yaratish (agar mavjud bo'lmasa)
./pocketbase/pocketbase admin create admin@gmail.com admin12345 || true

# PocketBase serverini ishga tushirish
./pocketbase/pocketbase serve --http 0.0.0.0:10000
