FROM golang:1.13-stretch

RUN apt-get update \
  && env DEBIAN_FRONTEND=noninteractive \
     apt-get install -yq --no-install-recommends \
     python3 python3-pip python3-venv git shellcheck

RUN pip3 install setuptools wheel
RUN pip3 install pre-commit

LABEL name="pre-commit"
LABEL version="0.1.0"
LABEL repository="https://github.com/jieyu/github-actions"
LABEL homepage="https://github.com/jieyu/github-actions/pre-commit"
LABEL maintainer="Jie Yu <yujie.jay@gmail.com>"
LABEL com.github.actions.name="pre-commit"
LABEL com.github.actions.description="GitHub Action that runs pre-commit check."
LABEL com.github.actions.icon="layout"
LABEL com.github.actions.color="black"

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
