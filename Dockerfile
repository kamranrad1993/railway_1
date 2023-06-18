FROM ubuntu:20.04
run apt update
run apt install -y wget
RUN wget https://github.com/vi/websocat/releases/download/v1.11.0/websocat.x86_64-unknown-linux-musl -O websocat
RUN chmod +x websocat
EXPOSE 80/tcp
EXPOSE 80/udp
CMD ./websocat --binary ws-l:0.0.0.0:$PORT  ws://65.108.80.229
