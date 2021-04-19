#!/bin/bash
sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > access_denied.txt
awk '{print $4, $6}' access_denied.txt . filtered_logs.txt

https://docs.google.com/document/d/1xXzxlgnkdxOjTHqHvS9bLbq1xwp_OcwxMK2ChFkhPQ0/edit?usp=sharing
