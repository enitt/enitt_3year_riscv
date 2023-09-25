#FROM ubuntu:latest
# FROM riscv64/ubuntu
FROM riscv64/alpine:edge
# FROM scratch

COPY ./iiot_gw_3 /usr/local/bin/iiot_gw && ./iiot_gw.json /usr/local/bin/iiot_gw.json && ./iiot_hdms /usr/local/bin/iiot_hdms && ./command.sh /usr/local/bin/command.sh

ENTRYPOINT ["/bin/bash"]

CMD ["command.sh"]
