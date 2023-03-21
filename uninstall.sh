#!/bin/bash

set -ex

cd "$(dirname "${BASH_SOURCE[0]}")"

sfctl cluster select --endpoint http://localhost:19080
sfctl application delete --application-id MyGuestApp
sfctl application unprovision --application-type-name MyGuestAppType --application-type-version 1.0.0
sfctl store delete --content-path my_app
