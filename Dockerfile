FROM dreamingechoes/elixir:1.5.1

# Install hex, rebar, and get deps
ENV MIX_ENV=dev

RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix hex.info

WORKDIR /diversity-in-tech
