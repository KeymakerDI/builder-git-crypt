builder-git-crypt
Docker image providing maven to build jar file and git-crypt to decrypt files.

The motivation behind the image was to have a ready docker file to build Java projects using git-crypt on repository files.

Tools provided by image
initial version:
bash, g++, make, libffi-dev, openssl, git, gnupg, libssl-dev, gnupg-agent

Build
docker build -t terjohan/builder-git-crypt .

Usage
The image is expected to be run inside a (build) pipeline, which should handle setting getting git-crypt and enabling user to send in GPG secret / public via pipeline job.

Variable names used for GPG:

GPG_PASSPHRASE 
GPG_KEY_ID

The entrypoint is set to /bin/sh.

Roadmap
Very little is planned for this image! Maintenance:

update version of included tools
add other utility tools (typically used in shell scripts)
License
Apache License, Version 2.0. See the LICENSE file for the full license. The NOTICE file contains a reference to the Dockerfile I used as a starting point :)
