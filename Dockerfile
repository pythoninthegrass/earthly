FROM earthly/earthly:v0.8.15

ENV BUILDKIT_MAX_PARALLELISM=20
ENV BUILDKIT_SYNTAX="docker/dockerfile:1.7.0"
ENV CARGO_BUILD_JOBS=${BUILDKIT_MAX_PARALLELISM}
ENV EARTHLY_CACHE_DIR=/tmp/earthly
ENV EARTHLY_WORKING_DIR=/workspace

COPY buildkitd.toml /etc/buildkitd.toml

RUN sed -i "s/MAX_PARALLELISM/${MAX_PARALLELISM}/g" /etc/buildkitd.toml

LABEL org.opencontainers.image.title="earthly"
