FROM ubuntu:latest

RUN apt update -y &&					\
	apt upgrade -y &&					\
	apt install -y						\
	software-properties-common 			\
	build-essential						\
	qemu								\
	clang								\
	llvm								\
	grep								\
	sed									\
	gawk								\
	autoconf							\
	automake							\
	bison								\
	bzip2								\
	flex								\
	git									\
	gperf								\
	python3								\
	texinfo								\
	unrar								\
	unzip								\
	wget								\
	sudo								\
	cmake								\
	scons								\
	doxygen								\
	tar									\
	sudo								\
	python3-pip							\
	help2man							\
	lzip								\
	axel								\
	rsync

USER root
RUN useradd -m -s /bin/bash mengdemao &&\
	passwd -d mengdemao &&\
	echo "mengdemao      ALL = NOPASSWD: ALL" >> /etc/sudoers &&\
	mkdir -p /crosstool && chown -R mengdemao:mengdemao /crosstool

VOLUME /bin

COPY ./entrypoint.sh ./entrypoint.sh
USER root
RUN ["chmod", "+x", "./entrypoint.sh"]
USER mengdemao

ENTRYPOINT ["/bin/entrypoint.sh"]
