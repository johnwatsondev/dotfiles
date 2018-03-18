#!/bin/bash

echo '4606223' | sudo -S killall -HUP mDNSResponder; dscacheutil -flushcache
