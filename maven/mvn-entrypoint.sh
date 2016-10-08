#!/bin/bash
# override default maven image entry point, as we provide maven settings from host machine
exec "$@"
