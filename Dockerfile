FROM debian:11
RUN apt-get update && apt-get install -y python3-pip && pip install rst2html5-tools 
ADD entry.sh /root
WORKDIR /mnt
ENTRYPOINT ["/root/entry.sh"]
