# earthly

[Customized](https://docs.earthly.dev/ci-integration/build-an-earthly-ci-image) docker image for [earthly](https://earthly.dev/)

## Minimum Requirements

* [Docker](https://docs.docker.com/get-docker/)

## Usage

```bash
docker run -d -it --rm \
    --name earthly-buildkitd \
    --privileged \
    -v earthly-cache:/tmp/earthly:rw \
    ghcr.io/pythoninthegrass/earthly \
    "/usr/bin/entrypoint.sh buildkitd --config=/etc/buildkitd.toml"
```

## Further Reading

* [Configuration reference | Earthly](https://docs.earthly.dev/docs/earthly-config)