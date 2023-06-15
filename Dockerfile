FROM caddy:builder-alpine AS builder

RUN xcaddy build --with github.com/caddy-dns/cloudflare@latest

FROM caddy:2.6.4-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
