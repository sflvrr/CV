ARG BASE_OS=ubuntu:22.04
FROM ${BASE_OS}

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Vienna

RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-lang-cyrillic \
    texlive-lang-english \
    texlive-lang-german \
    texlive-science \
    lmodern \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY src/ /workspace/src/
COPY builder/compile.sh /usr/local/bin/compile.sh
RUN chmod +x /usr/local/bin/compile.sh

ENTRYPOINT ["/usr/local/bin/compile.sh"]