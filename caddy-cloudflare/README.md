# caddy-cloudflare

A simple Docker Compose stack to set up a Caddy container with the Cloudflare DNS plugin and prepare it as a reverse proxy. 

## Set up Environment variables

Clone the repository (or create a folder for the project) and create a file called `.env` within the folder. Fill it with the following variables:

```
CLOUDFLARE_API_TOKEN=yourtokenhere
PROXY_DOMAIN=example.com
```

If you don't know how to get your Cloudflare API token, this [blog post](https://samjmck.com/en/blog/using-caddy-with-cloudflare/#2-using-a-lets-encrypt-certificate) has more information.

## Set up Caddyfile

Take the example `Caddyfile` provided and tweak it to add your reverse proxy hosts. Both HTTP and HTTPS examples have been filled out to give you an idea of what it should look like.

## Run with Docker Compose

`docker compose up -d`
