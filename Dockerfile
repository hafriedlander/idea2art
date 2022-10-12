# This Dockerfile is useful for compiling the application once and quickly starting it up
# It is not useful yet for live development
FROM cirrusci/flutter
EXPOSE 5050

RUN apt update

# Add tini for proper signal propagation (CTRL-C)
# Add python for http server, the built-in `run -d web-server` rebuilds every time
RUN apt install -y tini python3

RUN flutter precache --web

COPY lib /idea2art/lib
COPY web /idea2art/web
COPY assets /idea2art/assets
COPY pubspec* /idea2art/
WORKDIR /idea2art

RUN flutter build web --release

# use `tini -g` to propagate SIGINT to child process so that CTRL-C works
ENTRYPOINT ["tini", "-g", "--"]

WORKDIR /idea2art/build/web/

# FIXME: this would allow us to avoid python but sadly it runs the compilation again (despite --no-build)

# CMD flutter run -d web-server \
#   --release \
#   --web-hostname 0.0.0.0 \
#   --web-port 5050 \
#   --no-devtools \
#   --no-build \
#   --no-hot

CMD python3 -m http.server 5050

