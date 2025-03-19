#!/usr/bin/env bash




HOST="y7.everkm.com"


SHELL_FOLDER=$(
  cd "$(dirname "$0")"
  pwd
)
cd $SHELL_FOLDER
echo work dir: $(pwd)

rsync -e 'ssh -p 22' \
--recursive \
--verbose \
--checksum \
--delete \
--compress \
--links \
--delete-after \
--exclude=\.* \
. root@"$HOST":~/rust-docker
