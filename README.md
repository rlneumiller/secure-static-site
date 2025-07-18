# Secure Site

This project is a minimal, secure static website served by Nginx inside a Docker container, managed with Podman (or Docker) Compose.

## Features
- Static site served from `site/index.html`
- Hardened Nginx configuration
- Uses tmpfs for temporary directories
- Podman (or Docker) Compose for easy local deployment
- Container runs with minimal privileges

## File Structure
- `site/index.html` — Main static HTML page
- `nginx.conf` — Custom Nginx configuration
- `Dockerfile` — Builds the Nginx container
- `docker-compose.yml` — Defines the service and security options

## Usage

### Prerequisites
- podman (Docker)
- podman-compose (Docker Compose)

### Build
```bash
# Build the Docker image
podman-compose build
```
### Run

```bash
# Start the service
podman-compose up
```
The site will be available at [http://127.0.0.1:8765](http://127.0.0.1:8765).

## Security Notes
- The container runs as read-only and drops all capabilities except those required for networking and file permissions.
- Temporary directories are mounted as tmpfs for additional isolation (tmpfs being ephemeral).

## License
MIT
