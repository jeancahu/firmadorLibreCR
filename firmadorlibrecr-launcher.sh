#!/bin/bash

JAR="/usr/share/java/firmadorlibrecr.jar"
JAVA21="/usr/lib/jvm/java-21-openjdk/bin/java"
JAVAEXE="java" # Caso general usar java por defecto (JRE 8)

if [ -x "$JAVA21" ]; then
    # Si existe OpenJDK versión 21
    JAVAEXE="${JAVA21}"
fi

if ! [ -t 0 ]; then
    ## Parámetros por PIPE
    exec "$JAVAEXE" -jar "$JAR" "$@" < <(cat -)
    exit $?
fi

exec "$JAVAEXE" -jar "$JAR" "$@"
exit $?
