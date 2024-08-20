#!/bin/bash
read in
export BORG_PASSPHRASE=$in
export BORG_UNKNOWN_UNENCRYPTED_REPO_ACCESS_IS_OK=yes
export BORG_RELOCATED_REPO_ACCESS_IS_OK=yes
borg prune "$@"
