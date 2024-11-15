FROM earthly/earthly:v0.8.15

ARG MAX_PARALLELISM=70

ENV BUILDKIT_SYNTAX="docker/dockerfile:1.7.0"
ENV CARGO_BUILD_JOBS=${MAX_PARALLELISM}

COPY buildkitd.toml /etc/buildkitd.toml

RUN sed -i "s/MAX_PARALLELISM/${MAX_PARALLELISM}/g" /etc/buildkitd.toml

LABEL org.opencontainers.image.title="earthly"
