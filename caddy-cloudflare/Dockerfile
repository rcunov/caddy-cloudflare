ARG CADDY_VER=2.6.2

FROM caddy:$CADDY_VER-builder-alpine AS builder

ARG CADDY_VER

RUN xcaddy build v$CADDY_VER --with github.com/caddy-dns/cloudflare@latest

FROM caddy:$CADDY_VER-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
