#!/bin/bash
exec java -XX:+UseSerialGC -server -cp "/Users/hannes/Documents/EDAN01/jacop-4.8.0.jar" -Xmx8G -Xss100M org.jacop.fz.Fz2jacop "$@"
