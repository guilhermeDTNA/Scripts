#! /bin/bash
killall tor
/etc/init.d/privoxy force-reload && /etc/init.d/polipo restart
tor
