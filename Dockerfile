FROM tutum/ubuntu:trusty
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN mkdir /v2ray/
ADD v2ray /v2ray/v2ray
ADD v2ctl /v2ray/v2ctl
RUN chmod +x /v2ray/v2ray \
	&& chmod +x /v2ray/v2ctl
ADD config.json /v2ray/config.json
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
EXPOSE 443
# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]