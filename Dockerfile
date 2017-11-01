FROM whirm/jnlp-slave

ADD https://raw.githubusercontent.com/moby/moby/master/hack/dind /usr/local/bin/dind

RUN chmod +x /usr/local/bin/dind

COPY dind-wrapper /usr/local/bin/dind-wrapper

ENTRYPOINT ["dind-wrapper"]
