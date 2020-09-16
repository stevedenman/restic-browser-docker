#!bin/sh

echo "Starting container ..."

restic snapshots &>/dev/null
status=$?
echo "Check Repo status $status"

if [ $status != 0 ]; then
    echo "Restic repository '${RESTIC_REPOSITORY}' does not exist."
    exit 1
fi

echo "Starting web server ..."
npx http-serve /mnt/backup &

echo "Container started."

exec "$@"