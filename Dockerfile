FROM caddy:builder-alpine AS builder

RUN xcaddy build --with github.com/caddy-dns/cloudflare@latest

FROM caddy:2.7.5

RUN apk add --no-cache curl

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
