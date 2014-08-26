FROM pataquets/ubuntu-base

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get -y install \
		gearman-job-server
	&& \
	apt-get clean

EXPOSE 4730

ENTRYPOINT [ "gearmand" ]
