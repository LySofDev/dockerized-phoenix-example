# Alpine Linux with Elixir
FROM elixir:1.7.3-alpine
RUN apk update && apk upgrade

# Phoenix Dependencies
RUN apk add nodejs npm
RUN apk add inotify-tools
RUN mix local.hex --force
RUN mix local.rebar --force

# Application
COPY . /greenfy/

# Install Project Dependencies
WORKDIR /greenfy
RUN mix deps.get --force

# Install Node Dependencies
WORKDIR /greenfy/assets
RUN npm i

# Project Directory
WORKDIR /greenfy