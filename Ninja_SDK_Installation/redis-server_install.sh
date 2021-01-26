#!/bin/bash

echo ${password} | sudo -S apt-get install redis-server --allow-unauthenticated -y 

