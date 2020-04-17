FROM gitlab/gitlab-ce:12.9.3-ce.0

LABEL maintainer="jonathan.e.jarvis@accenture.com"

COPY resources/assets/ /assets/

# Execute configuration scripts
RUN chmod +x -R /assets/wrapper
CMD ["/assets/wrapper"]
