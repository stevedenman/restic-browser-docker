# restic-browser-docker

Mounts a restic repository and allows access to the contents through browser.

The repository location and password must be set using enviroment variables.

Create an env file;

```sh
RESTIC_REPOSITORY=
RESTIC_PASSWORD=
...
```
... and run run.sh

The repository should be available at http://localhost:8080/
