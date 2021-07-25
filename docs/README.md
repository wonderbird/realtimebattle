# Some Development Details

## Development

The Dockerfile describes a container with a HTML5 VNC enabled Ubuntu environment you can use to build and run realtimebattle from your browser. The Dockerfile explains how to build and run the container on your machine. INSTALL tells you how to build realtimebattle inside that container.


## Automated Builds

Automated builds are described by the yml files in the [.github/workflows](../.github/workflows) directory.

### Build

This GitHub action rebuilds the application automatically on push and pull request, respectively. The action runs the build commands inside the docker container specified by Dockerfile.build-agent.

### Publish Build Agent Docker Image

Periodically, this GitHub action rebuilds Dockerfile.build-agent and pushes it to ghcr.io/wonderbird/rtb-build-agent:latest. Then the the **Build** action described above is triggered.
