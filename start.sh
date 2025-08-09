#!/bin/sh
set -e

# PocketBase binary'ga ruxsat berish
chmod +x pocketbase/pocketbase

# Har safar ishga tushganda admin qayta yaratiladi
./pocketbase/pocketbase superuser upsert admin@example.com admin12345

# Serverni ishga tushirish
./pocketbase/pocketbase serve --http 0.0.0.0:10000
