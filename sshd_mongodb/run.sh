#!/bin/bash

/usr/sbin/sshd -D &

export LC_ALL=C
/usr/local/mongodb/bin/mongod --config=/usr/local/mongodb/mongod.conf
/bin/bash
