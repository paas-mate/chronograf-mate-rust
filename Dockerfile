FROM ttbb/compile:rust AS build
COPY . /opt/sh/compile
WORKDIR /opt/sh/compile
RUN /root/.cargo/bin/cargo build


FROM ttbb/chronograf:nake

COPY docker-build /opt/sh/chronograf/mate

COPY --from=build /opt/sh/compile/target/debug/chronograf-mate-rust /opt/sh/chronograf/mate/chronograf-mate

WORKDIR /opt/sh/chronograf

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/sh/chronograf/mate/scripts/start.sh"]
