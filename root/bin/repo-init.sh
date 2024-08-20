#!/bin/bash

export BORG_PASSPHRASE=$(pwgen 128 1)

borg init -e repokey-blake2 $1 
echo "Passwort für $1: $BORG_PASSPHRASE"
echo
echo "Key für $1:" 
borg key export $1
