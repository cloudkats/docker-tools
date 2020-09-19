# Kubectl

Docker image for the Kubernetes [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) tool.

- [Dockerfile location](https://github.com/cloudkats/docker-tools/blob/master/kubectl/Dockerfile)
- [Dockerhub](https://hub.docker.com/repository/docker/cloudkats/kubectl)

## Tools installed

- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [curl](https://github.com/curl/curl)

## Supported tags and respective `Dockerfile` links

For earlier versions see available [tags on Docker Hub](https://hub.docker.com/r/cloudkats/kubectl/tags).

## Usage

To display help:
```bash
docker run --rm -it cloudkats/k8s-tools:latest kubectl --help
```

For full documentation see [kubectl](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands).

## License

MIT License - see the [LICENSE](https://github.com/cloudkats/docker-tools/blob/master/LICENCE) file for details
