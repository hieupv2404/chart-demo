#!/bin/bash
code = docker exec e09f8722ce62 curl -s -o /dev/null -I -w "%{http_code}" http://localhost:8090/api/health-check;
echo $code;
if ["$code" == "200"]; then
	echo 200;
else
	echo not 200;
fi
