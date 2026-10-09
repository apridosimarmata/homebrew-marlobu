# Homebrew Tap for Marlobu

PostgreSQL proxy with copy-on-write session isolation.

## Installation

```bash
brew tap apridosimarmata/marlobu
brew install marlobu-proxy
```

## Usage

```bash
# Start the proxy
DATABASE_URL="postgresql://user:pass@localhost:5432/mydb" marlobu-proxy

# Create a session
curl -X POST http://localhost:8080/sessions -d '{"project_id": "demo"}'
```

See [marlobu-proxy](https://github.com/apridosimarmata/marlobu-proxy) for full documentation.
