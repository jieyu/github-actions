FROM python:3.7-slim-stretch

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