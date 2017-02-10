FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.9

RUN gem install epubforge --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["epubforge"]
CMD ["--help"]
