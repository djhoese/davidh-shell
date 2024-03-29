#!/usr/bin/env bash

#!/bin/sh

try=0

while [ ! -S "${PAM_KWALLET5_LOGIN}" ]; do
        [ $try -ge 10 ] && exit
        sleep 1
        echo "Waiting for ssh-add.sh to find PAM_KWALLET5_LOGIN"
        try=$(($try+1))
done

DOTSSHDIR="${HOME}/.ssh"

for FILE in $(ls "${DOTSSHDIR}"); do
        FPATH=$(readlink -f "${DOTSSHDIR}/${FILE}")
        file "${FPATH}" | egrep -q 'private key$' && ssh-add "${FPATH}" </dev/null
done
