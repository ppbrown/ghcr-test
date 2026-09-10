# ghcr-test

A docker container suitable for testing auto-loading GitOps frameworks with.
Named "ghcr-test", because it leverages the free ghcr.io service as the repository target for the image build.

## Features:

1. Autobuilt on git push, by way of github workflow and free github workflow service
2. Running service shows the image tag name, and also optional "CUSTOM_CONTENT" env value
3. Auto tagged with branch name and build id (eg:  `ghcr.io/ppbrown/ghcr-test:staging-34433312463`)
4. Two seperate branches (main and staging) so you can test branch-unique deployment strategies
5. No hardcodes for my own urls, so easily clonable for your own use... But the image here is already directly usable for many testing purposes

## Sample Output

    Now running ghcr-test image main-34433255240
    Custom content: Local fluxCD override here

## Current Repos
Repos of mine that currently incorporate this image:
* [/ppbrown/portainer-test](https://github.com/ppbrown/portainer-test)
* [/ppbrown/fluxcd-ghcr-app](https://github.com/ppbrown/fluxcd-ghcr-app)
* [/ppbrown/fluxcd-starterkit](https://github.com/ppbrown/fluxcd-starterkit)

