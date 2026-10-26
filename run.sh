#!/bin/bash

# 1. Load the local environment variables if the file exists
if [ -f .env ]; then
    echo "Loading temporary local credentials..."
    export $(grep -v '^#' .env | xargs)
else
    echo "Error: .env file not found!"
    exit 1
fi

# 2. Execute your Java application
# (Use Maven, Gradle, or standard run commands)
mvn exec:java -Dexec.mainClass="com.example.DatabaseConnection"

# Alternatively, if running a compiled JAR:
# java -jar target/YourApp.jar
