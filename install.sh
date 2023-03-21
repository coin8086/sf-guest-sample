#!/bin/bash

set -ex

cd "$(dirname "${BASH_SOURCE[0]}")"

sfctl cluster select --endpoint http://localhost:19080
sfctl application upload --path my_app --show-progress
sfctl application provision --application-type-build-path my_app
sfctl application create --app-name fabric:/MyGuestApp --app-type MyGuestAppType --app-version 1.0.0
