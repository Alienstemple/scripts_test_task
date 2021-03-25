#!/bin/bash

awk '{print $1}' $1 | sort | uniq -c | sort -bgr | head -n 1 | awk '{print $2}'
