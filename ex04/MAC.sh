#!/bin/sh
ifconfig -a | awk '/ether / {print $2}'  | awk '!x[$0]++'
