#!/bin/bash

JAR="/usr/share/java/firmadorlibrecr.jar"
JAVA21="/usr/lib/jvm/java-21-openjdk/bin/java"

if [ -x "$JAVA21" ]; then
    # Si existe OpenJDK versión 21
    exec "$JAVA21" -jar "$JAR" "$@"
else
    # Usar java por defecto (JRE 8)
    exec java -jar "$JAR" "$@"
fi
