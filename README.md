# Inception Layout

## Defense Focus
- Why VM is required: isolates Docker workloads from the host and provides a clean, reproducible runtime.
- Why `srcs/` exists: keeps compose files, Dockerfiles, and app sources grouped away from root metadata.
- Why Makefile wraps docker-compose: offers a consistent interface for common actions and reduces command typing.
- Why `.env` is separate from Dockerfiles: centralizes configuration without baking environment values into images.

## Validation Check
Run:
```sh
make
```
Expected behavior: should fail cleanly but attempt to run `docker-compose`.
