FROM pataquets/ubuntu:trusty

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get -y install \
		gearman-job-server
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

EXPOSE 4730

ENTRYPOINT [ "gearmand" ]
