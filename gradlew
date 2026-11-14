#!/bin/sh
# Gradle start-up script for POSIX
APP_HOME=$( cd "${0%/*}" && pwd -P ) || exit
APP_NAME="Gradle"
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

# Download wrapper jar if missing
if [ ! -f "$CLASSPATH" ]; then
  echo "Downloading gradle-wrapper.jar..."
  mkdir -p "$APP_HOME/gradle/wrapper"
  curl -fsSL -o "$CLASSPATH" \
    "https://github.com/gradle/gradle/raw/v8.9.0/gradle/wrapper/gradle-wrapper.jar" \
  || curl -fsSL -o "$CLASSPATH" \
    "https://raw.githubusercontent.com/gradle/gradle/v8.9.0/gradle/wrapper/gradle-wrapper.jar"
fi

exec java $DEFAULT_JVM_OPTS -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
